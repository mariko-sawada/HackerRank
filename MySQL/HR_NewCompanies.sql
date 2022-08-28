SELECT c.company_code, c.founder, count(DISTINCT e.lead_manager_code), count(DISTINCT e.senior_manager_code), count(DISTINCT e.manager_code), count(DISTINCT e.employee_code)
FROM Company c
JOIN Employee e ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code
