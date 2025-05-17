SELECT 
    a.plan_id, 
    a.owner_id, 
    a.type, 
    a.last_transaction_date, 
    DATEDIFF(CURDATE(), a.last_transaction_date) AS inactivity_days
FROM 
    accounts a
LEFT JOIN 
    transactions t ON a.plan_id = t.plan_id 
WHERE 
    (a.type = 'savings' OR a.type = 'investment') 
    AND (t.transaction_date IS NULL OR t.transaction_date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR))
    AND a.status = 'active';