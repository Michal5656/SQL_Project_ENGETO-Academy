SELECT
odvetvi,
rok,
prumerna_mzda,
LAG (prumerna_mzda) OVER (PARTITION BY odvetvi ORDER BY rok) AS mzda_minuly_rok,
round(prumerna_mzda - LAG(prumerna_mzda) OVER (PARTITION BY odvetvi ORDER BY rok), 0) AS rozdil_v_kc,
CASE 
     WHEN prumerna_mzda > LAG(prumerna_mzda) OVER (PARTITION BY odvetvi ORDER BY rok) THEN 'Rust'
     WHEN prumerna_mzda < LAG(prumerna_mzda) OVER (PARTITION BY odvetvi ORDER BY rok) THEN 'Pokles'
    ELSE 'První rok / Beze zmeny'
    END AS trend
FROM t_michal_culik_project_sql_primary_final
GROUP BY
	odvetvi,
	rok,
	prumerna_mzda
ORDER BY 
	odvetvi,
	rok;
