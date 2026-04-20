SELECT 
potravina,
rok::text,
round(avg(prumerna_mzda)) AS prumerna_mzda_vsech_odvetvi,
round(avg(prumerna_cena),2) AS prumerna_cena_vsech_potravin,
round(avg(prumerna_mzda)/ avg (prumerna_cena))::text AS počet_jednotek,
jednotka
FROM "t_Michal_Čulík_project_sql_primary_final"
WHERE 
(potravina  LIKE '%Chléb%' OR potravina LIKE '%Mléko%')
AND (
        rok = (SELECT MIN(rok) FROM "t_Michal_Čulík_project_sql_primary_final")
        OR 
        rok = (SELECT MAX(rok) FROM "t_Michal_Čulík_project_sql_primary_final")
    )
GROUP BY potravina, rok, jednotka
ORDER BY potravina, rok;
 