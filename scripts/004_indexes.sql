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

/*TODOs*/
/*
indexes on foreign keys:
RegularTransactions.fromUserID
RegularTransactions.toVendorID
TopUpTransactions.toUserID
UserToUserTransactions.fromUserID
UserToUserTransactions.toUserID
VendorPaymentTransactions.toVendorID
Notifications.recipientID

composite indexes on txStatusID and txTimeStamp for each tx table:
RegularTransaction.txStatusID and RegularTransaction.txTimeStamp
TopUpTransactions.txStatusID and TopUpTransactions.txTimeStamp
UserToUserTransactions.txStatusID and UserToUserTransactions.txTimeStamp
VendorPaymentTransactions.txStatusID and VendorPaymentTransactions.txTimeStamp
*/