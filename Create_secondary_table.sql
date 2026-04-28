CREATE TABLE t_michal_culik_project_sql_secondary_final AS
SELECT 
    e.country AS zeme,
    e.year AS rok,
    e.gdp AS hdp,
    e.population AS populace,
    e.gini AS gini
FROM economies e
JOIN countries c 
	ON e.country = c.country
WHERE c.continent = 'Europe' 
  AND e.year BETWEEN 2006 AND 2018;