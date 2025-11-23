USE AKPayDB;
GO

CREATE TRIGGER TR_UserAccounts_ValidLastUpdate
ON UserAccounts
AFTER UPDATE AS
BEGIN
    IF EXISTS(
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.userID = d.userID
        WHERE i.lastUpdateTime < d.lastUpdateTime
    )
    BEGIN
        ROLLBACK TRANSACTION;
    END
END;
GO

CREATE TRIGGER TR_Users_UserAccounts_CreateUserAccount
ON Users
AFTER INSERT
AS
BEGIN
    INSERT INTO UserAccounts (userID) SELECT userID FROM inserted;
END;
GO

CREATE TRIGGER TR_Vendors_ValidLastUpdate
ON Vendors
AFTER UPDATE AS
BEGIN
    IF EXISTS(
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.vendorID = d.vendorID
        WHERE i.lastUpdateTime < d.lastUpdateTime
    )
    BEGIN
        ROLLBACK TRANSACTION;
    END
END;
GO