-- GPT suggested keeping this on so script stops on error
SET XACT_ABORT ON;

Create DATABASE AKPayDB;
GO

-- Create Tables
CREATE TABLE Users(
    userID INT IDENTITY(1,1) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(11) NOT NULL UNIQUE,
    fullName VARCHAR(100) NOT NULL,
    passwordHash VARCHAR(255) NOT NULL,
    userType VARCHAR(20) NULL,
    dateCreated DATETIME NOT NULL DEFAULT GETDATE(),
    PRIMARY KEY (userID),
    CONSTRAINT CK_Users_email_LUMS
        CHECK (email LIKE '%@lums.edu.pk' AND email NOT LIKE '% %'),
    CONSTRAINT CK_Users_phone_Formatting
        CHECK (LEN(phone) = 11 AND phone LIKE '3%' AND phone NOT LIKE '%[^0-9]%')
);
GO

CREATE TABLE UserAccounts(
    userID INT NOT NULL,
    userBalance DECIMAL(12, 2) NOT NULL DEFAULT 0,
    lastUpdateTime DATETIME NOT NULL DEFAULT GETDATE(),
    isActive BIT NOT NULL DEFAULT 0,
    PRIMARY KEY (userID),
    CONSTRAINT FK_UserAccounts_Users
        FOREIGN KEY (userID) REFERENCES Users(userID),
    CONSTRAINT CK_UserAccounts_balance_NonNeg
        CHECK (userBalance >= 0)
);
GO

CREATE TABLE VendorStatuses(
    statusID INT IDENTITY(1,1) PRIMARY KEY,
    statusName VARCHAR(30) NOT NULL UNIQUE,
    -- tillWhen: auto-update status after this time (e.g., 'Closed' until 9PM, then 'Open')(enforce in backend)
    tillWhen DATETIME NULL
);
GO

CREATE TABLE Vendors(
    vendorID INT IDENTITY(1,1) NOT NULL,
    vendorName VARCHAR(100) NOT NULL,
    vendorBalance decimal(12, 2) NOT NULL DEFAULT 0,
    lastUpdateTime DATETIME NOT NULL DEFAULT GETDATE(),
    managerName VARCHAR(100) NULL,
    managerPhone varchar(11) NULL,
    statusID INT NOT NULL DEFAULT 2,  -- DEFAULT is 'Closed'
    PRIMARY KEY (vendorID),
    CONSTRAINT FK_Vendors_VendorStatuses
        FOREIGN KEY (statusID) REFERENCES VendorStatuses(statusID),
    CONSTRAINT CK_Vendors_managerPhone_Formatting
        CHECK (managerPhone IS NULL OR (LEN(managerPhone) = 11 AND managerPhone LIKE '3%' AND managerPhone NOT LIKE '%[^0-9]%')),
    CONSTRAINT CK_Vendors_Balance_NonNeg
        CHECK (vendorBalance >= 0)
);
GO

CREATE TABLE TransactionStatuses(
    statusID INT IDENTITY(1,1) PRIMARY KEY,
    statusName VARCHAR(50) NOT NULL UNIQUE,
    statusDescription VARCHAR(100) NULL
);
GO

CREATE TABLE RegularTransactions(
    regularTransactionID INT IDENTITY(1,1) NOT NULL,
    fromUserID INT NOT NULL,
    toVendorID INT NOT NULL,
    amount DECIMAL(12, 2) NOT NULL,
    txTimeStamp DATETIME NOT NULL DEFAULT GETDATE(),
    paymentMode VARCHAR(10) NOT NULL DEFAULT 'Offline',
    txStatusID INT NOT NULL DEFAULT 1,  -- default is 'Pending'
    PRIMARY KEY (regularTransactionID),
    CONSTRAINT FK_RegTx_Users
        FOREIGN KEY (fromUserID) REFERENCES Users(userID),
    CONSTRAINT FK_RegTx_Vendors
        FOREIGN KEY (toVendorID) REFERENCES Vendors(vendorID),
    CONSTRAINT FK_RegTx_TxStatuses
        FOREIGN KEY (txStatusID) REFERENCES TransactionStatuses(statusID),
    CONSTRAINT CK_RegTx_Amount_Positive
        CHECK (amount > 0),
    CONSTRAINT CK_RegTx_PaymentMode
        CHECK (paymentMode IN ('Offline', 'Online'))
);
GO

CREATE TABLE TopUpSources(
    sourceID INT IDENTITY(1,1) PRIMARY KEY,
    sourceName VARCHAR(30) NOT NULL UNIQUE
);
GO

CREATE TABLE TopUpTransactions(
    topUpTransactionID INT IDENTITY(1,1),
    sourceID INT NOT NULL,
    toUserID INT NOT NULL,
    amount DECIMAL(12, 2) NOT NULL,
    txTimeStamp DATETIME NOT NULL DEFAULT GETDATE(),
    txStatusID INT NOT NULL DEFAULT 1,  -- default is 'Pending'
    PRIMARY KEY (topUpTransactionID),
    CONSTRAINT FK_TopUpTx_TopUpSources
        FOREIGN KEY (sourceID) REFERENCES TopUpSources(sourceID),
    CONSTRAINT FK_TopUpTx_Users
        FOREIGN KEY (toUserID) REFERENCES Users(userID),
    CONSTRAINT FK_TopUpTx_TxStatuses
        FOREIGN KEY (txStatusID) REFERENCES TransactionStatuses(statusID),
    CONSTRAINT CK_TopUpTx_Amount_Positive
        CHECK (amount > 0)
);
GO

CREATE TABLE UserToUserTransactions(
    UToUTransactionID INT IDENTITY(1,1),
    toUserID INT NOT NULL,
    fromUserID INT NOT NULL,
    amount DECIMAL(12, 2) NOT NULL,
    txTimeStamp DATETIME NOT NULL DEFAULT GETDATE(),
    txStatusID INT NOT NULL DEFAULT 1,  -- default is 'Pending'
    PRIMARY KEY (UToUTransactionID),
    CONSTRAINT FK_U2UTx_Users_TO
        FOREIGN KEY (toUserID) REFERENCES Users(userID),
    CONSTRAINT FK_U2UTx_Users_FROM
        FOREIGN KEY (fromUserID) REFERENCES Users(userID),
    CONSTRAINT FK_U2UTx_TxStatuses
        FOREIGN KEY (txStatusID) REFERENCES TransactionStatuses(statusID),
    CONSTRAINT CK_U2UTx_To_NotEqualTo_From
        CHECK (toUserID <> fromUserID),
    CONSTRAINT CK_U2UTx_Amount_Positive
        CHECK (amount > 0)
);
GO

CREATE TABLE VendorPaymentTransaction(
    vendorPaymentTransactionID INT IDENTITY(1,1),
    toVendorID INT NOT NULL,
    amount DECIMAL(12, 2) NOT NULL,
    txTimeStamp DATETIME NOT NULL DEFAULT GETDATE(),
    txStatusID INT NOT NULL DEFAULT 2,  -- default is 'Sync Pending since this is always valid as
                                        -- it's from admin (hence why source attribute absent)
    PRIMARY KEY (vendorPaymentTransactionID),
    CONSTRAINT FK_VendorPayTx_Vendors
        FOREIGN KEY (toVendorID) REFERENCES Vendors(vendorID),
    CONSTRAINT FK_VendorPayTx_TxStatuses
        FOREIGN KEY (txStatusID) REFERENCES TransactionStatuses(statusID),
    CONSTRAINT CK_VendorPayTx_Amount_Positive
        CHECK (amount > 0)
);
GO

-- No FK on txID/recipientID: both can reference multiple tables (enforce FK-ish logic in backend)
CREATE TABLE Notifications(
    notificationID INT IDENTITY(1,1),
    recipientType VARCHAR(10) NOT NULL,  -- ONLY 2 possibilities, user or vendor
    recipientID INT NOT NULL,
    txType VARCHAR(20) NOT NULL,
    txID INT NULL, -- If notifType is not 'Info', txID must not be NULL (enforce in backend)
    msg VARCHAR(255) NOT NULL,
    createdAt DATETIME NOT NULL DEFAULT GETDATE(),
    isRead BIT NOT NULL DEFAULT 0,
    notifType VARCHAR(10) NOT NULL --
    PRIMARY KEY (notificationID),
    CONSTRAINT CK_Notifs_RecipientType
        CHECK (recipientType IN ('User', 'Vendor')),
    CONSTRAINT CK_Notifs_NotifType
        CHECK (notifType IN ('Success', 'Failure', 'Info')),
    CONSTRAINT CK_Notifs_IsRead
        CHECK (isRead IN (0, 1)),
    CONSTRAINT CK_Notifs_TxType
        CHECK (TxType IN ('Regular', 'U2U', 'TopUp', 'VendorPay'))
);
GO