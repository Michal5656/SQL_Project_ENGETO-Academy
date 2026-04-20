CREATE TABLE t_Michal_Čulík_project_sql_secondary_final AS
SELECT 
    e.country AS země,
    e.YEAR::text AS rok,
    e.gdp AS HDP,
    e.population AS populace,
    e.gini AS Gini
FROM economies e
JOIN countries c 
ON e.country = c.country
WHERE c.continent = 'Europe' 
  AND e.year BETWEEN 2000 AND 2018;