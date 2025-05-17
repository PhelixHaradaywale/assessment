-- This SQL query identifies high-value customers who have both a funded savings plan and a funded investment plan.
-- It retrieves the owner_id, name, savings_count, investment_count, and total_deposits, sorted by total deposits.

SELECT 
    c.owner_id,
    c.name,
    COUNT(DISTINCT s.plan_id) AS savings_count,
    COUNT(DISTINCT i.plan_id) AS investment_count,
    SUM(COALESCE(s.balance, 0) + COALESCE(i.balance, 0)) AS total_deposits
FROM 
    customers c
JOIN 
    savings_plans s ON c.owner_id = s.owner_id AND s.funded = TRUE
JOIN 
    investment_plans i ON c.owner_id = i.owner_id AND i.funded = TRUE
GROUP BY 
    c.owner_id, c.name
ORDER BY 
    total_deposits DESC;