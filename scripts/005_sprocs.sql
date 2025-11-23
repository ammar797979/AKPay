USE AKPayDB;
GO

-- Soft deletion of users (no deletion allowed on users, just set it to
-- isDeleted and no deletion allowed on userAccount, just set it to inactive)
CREATE PROCEDURE SP_SoftDeleteUser
    @userID INT
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRANSACTION;
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM Users WHERE userID = @userID)
            THROW 75000, 'User not found', 1;
        IF EXISTS (SELECT 1 FROM Users WHERE userID = @userID AND isDeleted = 1)
            THROW 75001, 'User is already deleted', 1;
        IF EXISTS (
            SELECT 1 FROM RegularTransactions
            WHERE fromUserID = @userID AND txStatusID IN (1, 2, 4) -- Pending, Sync Pending, Sync Failed
        )
            THROW 75002, 'Cannot delete user with unsettled regular transactions', 1;
        IF EXISTS (
            SELECT 1 FROM TopUpTransactions
            WHERE toUserID = @userID AND txStatusID IN (1, 2, 4)
        )
            THROW 75003, 'Cannot delete user with unsettled top-up transactions', 1;
        IF EXISTS (
            SELECT 1 FROM UserToUserTransactions
            WHERE (toUserID = @userID OR fromUserID = @userID) AND txStatusID IN (1, 2, 4)
        )
            THROW 75004, 'Cannot delete sure with unsettled user-to-user transactions', 1;
        IF EXISTS (
            SELECT 1 FROM UserAccounts
            WHERE userID = @userID AND balance > 0
        )
            THROW 75005, 'Cannot delete user who has balance in account', 1;

        UPDATE Users
        SET isDeleted = 1, deletedAt = GETDATE()
        WHERE userID = @userID;

        UPDATE UserAccounts
        SET isActive = 0, lastUpdateTime = GETDATE()
        WHERE userID = @userID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
GO

-- Admin only sproc, to physically delete a user from the tables if needed
CREATE PROCEDURE SP_PurgeUser
    @userID INT
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRANSACTION;
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM Users WHERE userID = @userID)
            THROW 75006, 'User not found', 1;
        IF EXISTS (
            SELECT 1 FROM RegularTransactions
            WHERE fromUserID = @userID AND txStatusID IN (1, 2, 4) -- Pending, Sync Pending, Sync Failed
        )
            THROW 75007, 'Cannot purge user with unsettled regular transactions', 1;
        IF EXISTS (
            SELECT 1 FROM TopUpTransactions
            WHERE toUserID = @userID AND txStatusID IN (1, 2 ,4)
        )
            THROW 75008, 'Cannot purge user with unsettled top-up transactions', 1;
        IF EXISTS (
            SELECT 1 FROM UserToUserTransactions
            WHERE (toUserID = @userID OR fromUserID = @userID) AND txStatusID IN (1, 2, 4)
        )
            THROW 75009, 'Cannot purge user with unsettled user-to-user transactions', 1;
        IF EXISTS (
            SELECT 1 FROM UserAccounts
            WHERE userID = @userID AND balance > 0
        )
            THROW 75010, 'Cannot purge user who we owe monies', 1;

        DELETE FROM UserAccounts WHERE userID = @userID;
        DELETE FROM Users WHERE userID = @userID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
GO