create table t_Michal_Čulík_project_SQL_primary_final AS  
SELECT 
    cpc.name AS potravina,
    round(avg(cp.value)::numeric, 2) AS prumerna_cena,
    cpc.price_unit AS jednotka,
    pay.payroll_year AS rok,
    round(avg(pay.value)::numeric, 2) AS prumerna_mzda,
    pib.name AS odvetvi
FROM czechia_price cp
JOIN czechia_price_category cpc 
    ON cp.category_code = cpc.code
JOIN czechia_payroll pay 
    ON date_part('year', cp.date_from) = pay.payroll_year
LEFT JOIN czechia_payroll_industry_branch pib 
    ON pay.industry_branch_code = pib.code
WHERE cp.region_code IS NULL
  AND pay.value_type_code = 5958 
  AND pay.calculation_code = 200 
  AND pay.industry_branch_code IS NOT NULL 
GROUP BY cpc.name, cpc.price_unit, pay.payroll_year, pib.name;