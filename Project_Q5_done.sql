WITH data_vse AS (
    SELECT 
        p.rok,
        AVG(p.prumerna_mzda) AS mzda,
        AVG(p.prumerna_cena) AS cena,
        s.hdp
    FROM t_michal_culik_project_sql_primary_final p
    JOIN t_michal_culik_project_sql_secondary_final s
        ON p.rok = s.rok 
        AND s.zeme = 'Czech Republic'
    GROUP BY 
    	p.rok,
    	s.hdp
),
vypocet_narustu AS (
    SELECT 
        rok,
        hdp,
        ROUND(((hdp - LAG(hdp) OVER (ORDER BY rok)) / LAG(hdp) OVER (ORDER BY rok) * 100)::NUMERIC, 2) AS narust_hdp,
        ROUND(((mzda - LAG(mzda) OVER (ORDER BY rok)) / LAG(mzda) OVER (ORDER BY rok) * 100)::NUMERIC, 2) AS narust_mzdy,
        ROUND(((cena - LAG(cena) OVER (ORDER BY rok)) / LAG(cena) OVER (ORDER BY rok) * 100)::NUMERIC, 2) AS narust_ceny
    FROM data_vse
)
SELECT 
    rok,
    narust_hdp,
    LAG(narust_hdp) OVER (ORDER BY rok) AS narust_hdp_predchozi_rok,
    narust_mzdy,
    narust_ceny
FROM vypocet_narustu
ORDER BY 
	rok;


