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