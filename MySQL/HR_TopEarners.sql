SELECT CONCAT(MAX(months*salary)," ",COUNT(months*salary)) FROM Employee GROUP BY months*salary ORDER BY months*salary DESC LIMIT 1
