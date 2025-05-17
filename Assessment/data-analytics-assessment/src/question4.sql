SELECT 
    c.customer_id, 
    c.name, 
    DATEDIFF(CURRENT_DATE, MIN(a.open_date)) / 30 AS tenure_months, 
    COUNT(t.transaction_id) AS total_transactions, 
    (COUNT(t.transaction_id) * 100) AS estimated_clv 
FROM 
    customers c 
LEFT JOIN 
    accounts a ON c.customer_id = a.owner_id 
LEFT JOIN 
    transactions t ON a.plan_id = t.plan_id 
GROUP BY 
    c.customer_id, c.name 
ORDER BY 
    estimated_clv DESC;