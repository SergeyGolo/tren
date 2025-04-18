SELECT 
    (SUM(DATEDIFF(p.exit_date, p.entry_date)) / (COUNT(DISTINCT p.number) * DATEDIFF(CURDATE(), '2023-01-01'))) * 100 AS occupancy_percentage
FROM 
    poselenci p
WHERE 
    p.entry_date >= '2023-01-01' AND p.exit_date <= CURDATE();