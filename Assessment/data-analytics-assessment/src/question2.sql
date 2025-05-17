SELECT 
    CASE 
        WHEN avg_transactions_per_month > 20 THEN 'High Frequency'
        WHEN avg_transactions_per_month BETWEEN 10 AND 20 THEN 'Medium Frequency'
        ELSE 'Low Frequency'
    END AS frequency_category,
    COUNT(customer_id) AS customer_count,
    AVG(transactions_per_month) AS avg_transactions_per_month
FROM (
    SELECT 
        customer_id,
        COUNT(transaction_id) / COUNT(DISTINCT month) AS transactions_per_month
    FROM 
        transactions
    GROUP BY 
        customer_id, year, month
) AS monthly_transactions
GROUP BY 
    frequency_category;