WITH prumerna_cena_rok AS (
    SELECT 
        rok,
        potravina,
        AVG(prumerna_cena) AS cena 
    FROM t_michal_culik_project_sql_primary_final
    GROUP BY rok, potravina
),
mezirocni_zmeny AS (
    SELECT 
        potravina,
        rok,
        cena,
        LAG(cena) OVER (PARTITION BY potravina ORDER BY rok) AS cena_predchozi_rok
    FROM prumerna_cena_rok
)
SELECT 
    potravina,
    ROUND(AVG((cena - cena_predchozi_rok) / cena_predchozi_rok * 100)::NUMERIC, 2) AS prumerny_rocni_narust_procenta
FROM mezirocni_zmeny
WHERE 
	cena_predchozi_rok IS NOT NULL 
GROUP BY 
	potravina
ORDER BY 
	prumerny_rocni_narust_procenta ASC;