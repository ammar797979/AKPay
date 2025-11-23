-- User Validation
CREATE OR ALTER PROCEDURE dbo.ValidateUser
    @UserID INT
AS
BEGIN  
    IF NOT EXISTS(SELECT 1 FROM dbo.Users WHERE userID = @UserID AND isDeleted = 0)
    THROW 50005, 'Unvalid user.', 1;
END
GO

-- Validate vendor
CREATE OR ALTER PROCEDURE dbo.ValidateVendor
    @VendorID INT
AS
BEGIN  
    IF NOT EXISTS(SELECT 1 FROM dbo.Vendors WHERE vendorID = @VendorID)
    THROW 50006, 'Unvalid vendor.', 1;
END
GO

-- Validate Source
CREATE OR ALTER PROCEDURE dbo.ValidateTopUpSource
    @SourceID INT
AS
BEGIN  
    IF NOT EXISTS(SELECT 1 FROM dbo.TopUpSources WHERE sourceID = @SourceID)
    THROW 50007, 'Unvalid topup source.', 1;
END
GO

--1. TopUp TX
CREATE OR ALTER PROCEDURE dbo.TopUp_tx
    @SourceID INT,
    @ToUserID INT,
    @Amount DECIMAL (20,2)
AS
BEGIN
    SET XACT_ABORT ON;

    EXEC dbo.ValidateTopUpSource @SourceID;
    EXEC dbo.ValidateUser @ToUserID;

    BEGIN TRY
        BEGIN TRAN;

        SELECT userBalance
        FROM dbo.UserAccounts WITH (ROWLOCK, UPDLOCK, HOLDLOCK)
        WHERE userID = @ToUserID;

        UPDATE dbo.UserAccounts
        SET userBalance = userBalance + @Amount,
            lastUpdateTime = GETDATE()
        WHERE userID = @ToUserID


        INSERT INTO dbo.TopUpTransactions (sourceID, toUserID, amount, txTimeStamp)
        VALUES (@SourceID, @ToUserID, @Amount, GETDATE());

        COMMIT TRAN;
        RETURN 0;
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRAN;
        THROW
    END CATCH
END
GO

--2. U2U Transfer
CREATE OR ALTER PROCEDURE dbo.U2U_tx
    @FromUserID INT,
    @ToUserID INT,
    @Amount DECIMAL (20,2)

AS 
BEGIN
    SET XACT_ABORT ON;

    IF @FromUserID = @ToUserID
        THROW 50001, 'Sender and receiver cannot be the same.', 1;

    EXEC dbo.ValidateUser @FromUserID;
    EXEC dbo.ValidateUser @ToUserID;

    BEGIN TRY
        BEGIN TRAN;

        IF @FromUserID < @ToUserID
        BEGIN
        SELECT userBalance FROM dbo.UserAccounts WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE userID = @FromUserID;
        SELECT userBalance FROM dbo.UserAccounts WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE userID = @ToUserID;
        END
        ELSE
        BEGIN
        SELECT userBalance FROM dbo.UserAccounts WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE userID = @ToUserID;
        SELECT userBalance FROM dbo.UserAccounts WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE userID = @FromUserID;
        END

        DECLARE @FromBalance DECIMAL (20,2);
        SELECT @FromBalance = userBalance FROM dbo.UserAccounts WHERE userID = @FromUserID;

        IF @FromBalance < @Amount
        BEGIN
            ROLLBACK TRAN;
        THROW 50002, 'Insufficient balance.', 1;
        END

        UPDATE dbo.UserAccounts
        SET userBalance = userBalance - @Amount,
            lastUpdateTime = GETDATE()
        WHERE userID = @FromUserID;

        UPDATE dbo.UserAccounts
        SET userBalance = userBalance + @Amount,
            lastUpdateTime = GETDATE()
        WHERE userID = @ToUserID;

        INSERT INTO UserToUserTransactions (toUserID, fromUserID, amount, txTimeStamp)
        VALUES (@ToUserID, @FromUserID, @Amount, GETDATE());

        COMMIT TRAN;
        RETURN 0;
    END TRY

    BEGIN CATCH
    IF @@TRANCOUNT > 0
            ROLLBACK TRAN;
        THROW
    END CATCH
END
GO

--3. Regular_tx
CREATE OR ALTER PROCEDURE dbo.Regular_tx
    @UserID INT,
    @VendorID INT,
    @Amount DECIMAL(18,2),
    @IsOnline BIT = 0
AS
BEGIN
    SET XACT_ABORT ON;

    DECLARE @PaymentMode NVARCHAR(10);

    IF @IsOnline = 1
        SET @PaymentMode = 'Online';
    ELSE
        SET @PaymentMode = 'Offline';

    EXEC dbo.ValidateUser @UserID;
    EXEC dbo.ValidateVendor @VendorID;

BEGIN TRY
    BEGIN TRAN;

    IF @UserID < @VendorID
    BEGIN
    SELECT userBalance FROM dbo.UserAccounts WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE userID = @UserID;
    SELECT vendorBalance FROM dbo.Vendors WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE vendorID = @VendorID;
    END
    ELSE
    BEGIN
    SELECT vendorBalance FROM dbo.Vendors WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE vendorID = @VendorID;
    SELECT userBalance FROM dbo.UserAccounts WITH (ROWLOCK, UPDLOCK, HOLDLOCK) WHERE userID = @UserID;
    END

    DECLARE @UserBal DECIMAL (20,2);
    SELECT @UserBal = userBalance FROM dbo.UserAccounts WHERE userID = @UserID;

    IF @UserBal < @Amount
        BEGIN
            ROLLBACK TRAN;
            THROW 50003, 'Insufficient balance.', 1;
        END

    UPDATE dbo.UserAccounts
    SET userBalance = userBalance - @Amount,
        lastUpdateTime = GETDATE()
    WHERE userID = @UserID;

    UPDATE dbo.Vendors
    SET vendorBalance = vendorBalance + @Amount,
        lastUpdateTime = GETDATE()
    WHERE vendorID = @VendorID;

    INSERT INTO dbo.RegularTransactions (fromUserID, toVendorID, amount, txTimeStamp, paymentMode)
    VALUES (@UserID, @VendorID, @Amount, GETDATE(), @PaymentMode);

    COMMIT TRAN;
        RETURN 0;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRAN;
        THROW;
    END CATCH
END
GO

--4. VendorPay
CREATE OR ALTER PROCEDURE dbo.VendorPay_tx
    @SourceID INT,
    @VendorID INT,
    @Amount DECIMAL (20,2)
AS
BEGIN
    SET XACT_ABORT ON;

    EXEC dbo.ValidateTopUpSource @SourceID;

    IF @SourceID <> 1
        THROW 50004, 'Only Admin can VendorPay.', 1;

    EXEC dbo.ValidateVendor @VendorID;

    BEGIN TRY
        BEGIN TRAN;

        SELECT vendorBalance
        FROM dbo.Vendors WITH (ROWLOCK, UPDLOCK, HOLDLOCK)
        WHERE vendorID = @VendorID;

        UPDATE dbo.Vendors
        SET vendorBalance = vendorBalance + @Amount,
            lastUpdateTime = GETDATE()
        WHERE vendorID = @VendorID;

        INSERT INTO dbo.VendorPaymentTransaction (toVendorID, amount, txTimeStamp)
        VALUES(@VendorID, @Amount, GETDATE());

        COMMIT TRAN;
        RETURN 0;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        ROLLBACK TRAN;
        THROW;
    END CATCH
END
GO

-- TX Handling
CREATE OR ALTER PROCEDURE dbo.TX_Handling
    @FromID INT = NULL,
    @ToID INT = NULL,
    @Amount DECIMAL (20,2),
    @TransactionType NVARCHAR(50),
    @ExtraSourceID INT = NULL,
    @PaymentMode NVARCHAR(10) = NULL
AS
BEGIN
    SET XACT_ABORT ON;

    IF @TransactionType = 'TopUp'
    BEGIN
        EXEC dbo.TopUp_tx
            @ToUserID = @ToID,
            @Amount = @Amount,
            @SourceID = @ExtraSourceID;
        RETURN 0;
    END
    ELSE IF @TransactionType = 'U2U'
    BEGIN
        EXEC dbo.U2U_tx
            @FromUserID = @FromID,
            @ToUserID = @ToID,
            @Amount = @Amount;
        RETURN 0;
    END
    ELSE IF @TransactionType = 'Regular'
    BEGIN
        DECLARE @IsOnline BIT = 0;

        IF @PaymentMode IS NOT NULL AND LOWER(@PaymentMode) = 'online'
            SET @IsOnline = 1;

        EXEC dbo.Regular_tx
            @UserID = @FromID,
            @VendorID = @ToID,
            @Amount = @Amount;
        RETURN 0;
    END
    ELSE IF @TransactionType = 'VendorPay'
    BEGIN
        EXEC dbo.VendorPay_tx
            @SourceID = @FromID,
            @VendorID = @ToID,
            @Amount = @Amount;
        RETURN 0;
    END
    ELSE
        THROW 50000, 'Invalid transaction.', 1;
END
GO

-- TX History
CREATE OR ALTER PROCEDURE GetUserTransactionHistory
    @UserID INT
AS
BEGIN
    SET NOCOUNT ON;

    --U2U
    SELECT
        'U2U' as txType,
        fromUserID AS senderID,
        dbo.GetSenderName('U2U', UToUTransactionID) AS senderName,
        toUserID AS receiverID,
        dbo.GetReceiverName('U2U', UToUTransactionID) AS receiverName,
        amount,
        txTimeStamp,
        NULL AS paymentMode,
        dbo.GetTXSign('U2U', UToUTransactionID, @UserID, 'User') AS sign
    FROM UserToUserTransactions
    WHERE fromUserID = @UserID OR toUserID = @UserID

    UNION ALL

    -- Regular
    SELECT
        'Regular' as txType,
        fromUserID AS senderID,
        dbo.GetSenderName('Regular', regularTransactionID) AS senderName,
        toVendorID AS receiverID,
        dbo.GetReceiverName('Regular', regularTransactionID) AS receiverName,
        amount,
        txTimeStamp,
        paymentMode,
        dbo.GetTXSign('Regular', regularTransactionID, @UserID, 'User') AS sign
    FROM RegularTransactions
    WHERE fromUserID = @UserID

    UNION ALL

    SELECT
        'TopUp' AS txType,
        NULL AS senderID,
        dbo.GetSenderName('TopUp', topUpTransactionID) AS senderName,
        toUserID AS receiverID,
        dbo.GetReceiverName('TopUp', topUpTransactionID) AS receiverName,
        amount,
        txTimeStamp,
        NULL AS paymentMode,
        dbo.GetTXSign('TopUp', topUpTransactionID, @UserID, 'User') AS sign
    FROM TopUpTransactions t
    WHERE toUserID = @UserID

    ORDER BY txTimeStamp DESC;
END
GO

CREATE OR ALTER PROCEDURE GetVendorTransactionHistory
    @VendorID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        'Regular' AS txType,
        t.fromUserID AS senderID,
        u.fullName AS senderName,
        t.toVendorID AS receiverID,
        v.vendorName AS receiverName,
        t.amount,
        t.txTimeStamp,
        t.paymentMode,
        dbo.GetTXSign('Regular', regularTransactionID, @VendorID, 'Vendor') AS sign
    FROM RegularTransactions t
    JOIN Users u ON t.fromUserID = u.userID
    JOIN Vendors v ON t.toVendorID = v.vendorID
    WHERE t.toVendorID = @VendorID

    UNION ALL

    SELECT
        'VendorPay' AS txType,
        NULL AS senderID,
        'Admin' AS senderName,
        t.toVendorID AS receiverID,
        v.vendorName AS receiverName,
        t.amount,
        t.txTimeStamp,
        'Online' AS paymentMode,
        dbo.GetTXSign('VendorPay', vendorPaymentTransactionID, @VendorID, 'Vendor') AS sign
    FROM VendorPaymentTransaction t
    JOIN Vendors v ON t.toVendorID = v.vendorID
    WHERE t.toVendorID = @VendorID

    ORDER BY txTimeStamp DESC;
END
GO
