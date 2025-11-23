USE AKPayDB;
GO

CREATE INDEX IX_Notifications_RecipientID
    ON Notifications(recipientID);
GO
