SELECT 
potravina,
rok,
ROUND(AVG(prumerna_mzda)) AS prumerna_mzda_vsech_odvetvi,
ROUND(AVG(prumerna_cena), 2) AS prumerna_cena_vsech_potravin,
ROUND((AVG(prumerna_mzda) / 2) / AVG(prumerna_cena)) AS nakoupene_mnozstvi,
jednotka
FROM t_michal_culik_project_sql_primary_final
WHERE 
	(potravina  LIKE '%Chléb%' OR potravina LIKE '%Mléko%')
	AND (
        rok = (SELECT MIN(rok) FROM t_michal_culik_project_sql_primary_final)
        OR 
        rok = (SELECT MAX(rok) FROM t_michal_culik_project_sql_primary_final)
    )
GROUP BY 
	potravina,
	rok,
	jednotka
ORDER BY
	potravina,
	rok;
 