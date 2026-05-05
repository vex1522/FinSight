-- Simple AR Aging Query
SELECT 
    InvoiceID, 
    CustomerID, 
    Amount, 
    DueDate,
    CURRENT_DATE - DueDate AS DaysPastDue,
    CASE 
        WHEN CURRENT_DATE - DueDate <= 0 THEN 'Current'
        WHEN CURRENT_DATE - DueDate BETWEEN 1 AND 30 THEN '1-30 Days Late'
        WHEN CURRENT_DATE - DueDate BETWEEN 31 AND 60 THEN '31-60 Days Late'
        ELSE '60+ Days Late'
    END AS AgingBucket
FROM Invoices
WHERE PaymentDate IS NULL;
