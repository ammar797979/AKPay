USE AKPayDB;
GO

-- Nonclustered index on fromUserID to accelerate joins/user-centric analytics
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_RegularTransactions_FromUser')
BEGIN
    CREATE NONCLUSTERED INDEX IX_RegularTransactions_FromUser
        ON RegularTransactions (fromUserID);
END;
GO

-- Nonclustered index on toVendorID to accelerate vendor revenue queries
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_RegularTransactions_ToVendor')
BEGIN
    CREATE NONCLUSTERED INDEX IX_RegularTransactions_ToVendor
        ON RegularTransactions (toVendorID);
END;
GO

-- Covering index for time-based analytics (daily/monthly trends)
-- Includes amount, txStatusID, fromUserID needed by analytic queries to reduce key lookups
IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_RegularTransactions_Analytics')
BEGIN
    CREATE NONCLUSTERED INDEX IX_RegularTransactions_Analytics
        ON RegularTransactions (txTimeStamp)
        INCLUDE (amount, txStatusID, fromUserID);
END;
GO

-- CTEs
-- Vendor performance rankings (most revenue first)
CREATE OR ALTER VIEW vw_VendorPerformanceRankings AS
WITH VendorRankings AS (
    SELECT 
        v.vendorName,
        COUNT(rt.regularTransactionID) AS TotalTransactions,
        SUM(rt.amount) AS TotalRevenue,
        RANK() OVER (ORDER BY SUM(rt.amount) DESC) AS RankPosition
    FROM Vendors v
    JOIN RegularTransactions rt ON v.vendorID = rt.toVendorID
    JOIN TransactionStatuses ts ON rt.txStatusID = ts.statusID
    WHERE ts.statusName = 'Completed'
    GROUP BY v.vendorName
)
SELECT * FROM VendorRankings;
GO

-- Monthly user spending statistics (dashboard pre-aggregation)
CREATE OR ALTER VIEW vw_UserMonthlyStats AS
WITH MonthlyStats AS (
    SELECT 
        fromUserID,
        FORMAT(txTimeStamp, 'yyyy-MM') AS TransactionMonth,
        AVG(amount) AS AvgTransactionSize,
        SUM(amount) AS TotalSpent
    FROM RegularTransactions rt
    JOIN TransactionStatuses ts ON rt.txStatusID = ts.statusID
    WHERE ts.statusName = 'Completed'
    GROUP BY fromUserID, FORMAT(txTimeStamp, 'yyyy-MM')
)
SELECT 
    u.fullName AS userFullName,
    u.email,
    ms.TransactionMonth,
    ms.TotalSpent,
    ms.AvgTransactionSize
FROM MonthlyStats ms
JOIN Users u ON ms.fromUserID = u.userID;
GO

--sproc for DV
-- Daily spending pulse for a given month/year
CREATE OR ALTER PROCEDURE sp_GetDailySpendingTrends
    @TargetMonth INT,
    @TargetYear INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        DAY(rt.txTimeStamp) AS DayOfMonth,
        COUNT(rt.regularTransactionID) AS TransactionVolume,
        SUM(rt.amount) AS TotalSpent,
        AVG(rt.amount) AS AvgTicketSize
    FROM RegularTransactions rt
    JOIN TransactionStatuses ts ON rt.txStatusID = ts.statusID
    WHERE MONTH(rt.txTimeStamp) = @TargetMonth
      AND YEAR(rt.txTimeStamp) = @TargetYear
      AND ts.statusName = 'Completed'
    GROUP BY DAY(rt.txTimeStamp)
    ORDER BY DayOfMonth;
END;
GO

-- PRINT 'Group 70: Indexes, analytic views, and visualization procedure deployed successfully.';
