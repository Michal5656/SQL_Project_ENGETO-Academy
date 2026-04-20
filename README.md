# SQL_Project_ENGETO-Academy
** Autor:**Michal Čulík
## Popis Projektu
Tento projekt se zaměřuje na porovnání dostupnosti základních potravin (chleba, mléko) v závislosti na průměrných mzdách v České republice v letech 2006–2018. Projekt také zkoumá vliv HDP na tyto ekonomické faktory. Cílem bylo odpovědět na výzkumbné otázky týkající se výše zmínených dat a ukazatelů

## Datové zdroje
Data byly čerpány z těchto tabulek z portálu otevřených dat ČR:
* 'czechia_payroll' - Informace o mzdách v různých odvětvích za několikaleté období.
* 'czechia_payroll_calculation' - Číselník kalkulací v tabulce mezd.
* 'czechia_payroll_industry_branch' -  Číselník odvětví v tabulce mezd.
* 'czechia_payroll_unit' -  Číselník jednotek hodnot v tabulce mezd.
* 'czechia_payroll_value_type' -   Číselník typů hodnot v tabulce mezd.
* 'czechia_price' -  Informace o cenách vybraných potravin za několikaleté období.
* 'czechia_price_category' - Číselník kategorií potravin, které se vyskytují v našem přehledu.
* 'countries' - Všemožné informace o zemích na světě, například hlavní město, měna, národní jídlo nebo průměrná výška populace.
* 'economies' - HDP, GINI, daňová zátěž, atd. pro daný stát a rok.

## Výzkumné otázky

### 1. Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
*Odpověď:* Mzdy vě většině odvětví postupem času rostly. Vzhledem k tomu, že byly k dispozici data od roku 2006 do roku 2018, tak nejčastěji byl vidět pokles v roce 2013, který byl způsoben ekonomickou recesí. Rok 2013 tak byl v ČR vnímán jako rok doznívání ekonomické krize, která byla následována postupnou stabilizací.

### 2. Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
*Odpověd:* V dostupných datech cen a mezd bylo první srovnatelné odbobí v roce 2006 a dle výsledků, jsem se dostal k tomu, že v té době se dalo koupit v průměru 1313kg chleba a 1466 litrů mléka. V posledních sledovaném období v roce 2018 to bylo 1365 kg chleba a 1670 litrů mléka.

### 3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)? 
*Odpověd:* Potravina, která ve sledovaném období zdražovala nejméně byl cukr. Této potravině se podařilo naopak zůstat v minusových hodnotách týkajících se zdražování, z čehož pramení, že tato potravina naopak zlevňovala a to konkrétně o 1,92 %.

### 4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
*Odpověd:* Dle dat z primární tabulek jsem dospěl k tomu, že žádná z potravin neměla meziroční růst o více než 10 % než meziroční růst mezd.

### 5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
*Odpověd:* Ano, vliv HDP je patrný zejména u mezd, kde silný růst ekonomiky predikuje budoucí nárůst mzdové hladiny. U cen potravin je závislost méně zřetelná, jelikož do hry vstupují další faktory (sezónnost, globální trhy). Například po propadu HDP v roce 2009 následovalo období mzdové stagnace v letech 2010–2011.




