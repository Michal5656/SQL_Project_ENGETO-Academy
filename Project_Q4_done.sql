WITH rocni_zmeny AS (
    SELECT 
        rok::text AS rok,
        AVG(prumerna_cena) AS cena_vse,
        AVG(prumerna_mzda) AS mzda_vse
    FROM "t_Michal_Čulík_project_sql_primary_final"
    GROUP BY rok
),
procentualni_narusty AS (
    SELECT 
        rok::text AS rok,
        ROUND(((cena_vse - LAG(cena_vse) OVER (ORDER BY rok)) / LAG(cena_vse) OVER (ORDER BY rok) * 100)::NUMERIC, 2) AS narust_ceny,
        ROUND(((mzda_vse - LAG(mzda_vse) OVER (ORDER BY rok)) / LAG(mzda_vse) OVER (ORDER BY rok) * 100)::NUMERIC, 2) AS narust_mzdy
    FROM rocni_zmeny
)
SELECT 
    *,
    (narust_ceny - narust_mzdy) AS rozdil
FROM procentualni_narusty
WHERE (narust_ceny - narust_mzdy) > 10 
ORDER BY rok;


