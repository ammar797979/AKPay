--sproc for DV
-- Daily spending pulse for a given month/year
USE AKPayDB;
GO

CREATE PROCEDURE dbo.sp_GetDailySpendingTrends
    @TargetMonth INT,
    @TargetYear INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Validate objects exist in the current database
    IF OBJECT_ID(N'dbo.RegularTransactions', N'U') IS NULL
    BEGIN
        DECLARE @msg1 NVARCHAR(200) = N'Table dbo.RegularTransactions not found in database ' + DB_NAME();
        THROW 51000, @msg1, 1;
        RETURN;
    END

    IF OBJECT_ID(N'dbo.TransactionStatuses', N'U') IS NULL
    BEGIN
        DECLARE @msg2 NVARCHAR(200) = N'Table dbo.TransactionStatuses not found in database ' + DB_NAME();
        THROW 51001, @msg2, 1;
        RETURN;
    END

    -- Build an inclusive start / exclusive end date range to allow index seeks
    DECLARE @startDate DATE = DATEFROMPARTS(@TargetYear, @TargetMonth, 1);
    DECLARE @endDate   DATE = DATEADD(MONTH, 1, @startDate);

    -- Resolve Completed status id once
    DECLARE @completedID INT = (SELECT statusID FROM dbo.TransactionStatuses WHERE statusName = 'Accepted');
    IF @completedID IS NULL
    BEGIN
        DECLARE @msg3 NVARCHAR(200) = N'TransactionStatuses does not contain a row with statusName = ''Accepted''.';
        THROW 51002, @msg3, 1;
        RETURN;
    END

    SELECT 
        DAY(rt.txTimeStamp) AS DayOfMonth,
        COUNT(*) AS TransactionVolume,
        SUM(rt.amount) AS TotalSpent,
        AVG(rt.amount) AS AvgTicketSize
    FROM dbo.RegularTransactions rt
    WHERE rt.txTimeStamp >= @startDate
      AND rt.txTimeStamp <  @endDate
      AND rt.txStatusID = @completedID
    GROUP BY DAY(rt.txTimeStamp)
    ORDER BY DayOfMonth;
END;
GO
