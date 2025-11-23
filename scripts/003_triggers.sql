USE AKPayDB;
GO

-- lastUpdateTime of a USER balance cannot be set to BEFORE the current lastUpdateTime value
CREATE TRIGGER TR_UserAccounts_ValidLastUpdate
ON UserAccounts
AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS(
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.userID = d.userID
        WHERE i.lastUpdateTime < d.lastUpdateTime
    )
    BEGIN
        ROLLBACK TRANSACTION;
        THROW 77000, 'UserAccounts.lastUpdateTime cannot be earlier than existing value', 1;
    END
END;
GO

-- lastUpdateTime of a VENDOR balance cannot be set to BEFORE the current lastUpdateTime value
CREATE TRIGGER TR_Vendors_ValidLastUpdate
ON Vendors
AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON

    IF EXISTS(
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.vendorID = d.vendorID
        WHERE i.lastUpdateTime < d.lastUpdateTime
    )
    BEGIN
        ROLLBACK TRANSACTION;
        THROW 77001, 'Vendors.lastUpdateTime cannot be earlier than existing value', 1;
    END
END
GO

-- Whenever new user created, make a new account for them (maintains one-to-one relationship)
CREATE TRIGGER TR_Users_UserAccounts_CreateUserAccount
ON Users
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO UserAccounts (userID)
    SELECT i.userID
    FROM inserted i
    WHERE NOT EXISTS(
        SELECT 1 FROM UserAccounts ua WHERE ua.userID = i.userID
    );
END
GO

CREATE TRIGGER TR_Users_BlockDirectDelete
ON Users
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT 1 FROM deleted)
    BEGIN
        THROW 77002, 'Direct deletes not allowed, use SP_DeleteUser instead', 1;
    END
END
GO

CREATE TRIGGER TR_UserAccounts_BlockDirectDelete
ON UserAccounts
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON

    IF EXISTS (SELECT 1 FROM deleted)
    BEGIN
        THROW 77003, 'Direct deletes not allowed, use SP_DeleteUser instead', 1;
    END
END
GO