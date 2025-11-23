USE AKPayDB;
GO

CREATE INDEX IX_Notifications_RecipientID
    ON Notifications(recipientID);
GO

CREATE INDEX IX_Users_isDeleted
    ON Users(isDeleted);
GO

CREATE UNIQUE INDEX IX_Users_Email_Active
    ON Users(email)
    WHERE Users.isDeleted = 0;
GO

CREATE UNIQUE INDEX IX_Users_Phone_Active
    ON Users(phone)
    WHERE Users.isDeleted = 0;
GO

/*TODO*/
/*
regularTransactions.fromUserID

*/