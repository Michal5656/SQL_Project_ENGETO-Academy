# SQL_Project_ENGETO-Academy
**Autor:** Michal Čulík
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
*Odpověd:* Pokud bychom chtěli koupit obě potraviny najednou, tak v roce 2006 bychom si z průměrné mzdy mohli dovolit 656 kg chleba a 733 litrů mléka. V roce 2018 by to bylo 683 kg chleba a 835 litrů mléka.

### 3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)? 
*Odpověd:* Potravina, která ve sledovaném období zdražovala nejméně byl cukr. Této potravině se podařilo naopak zůstat v minusových hodnotách týkajících se zdražování, z čehož pramení, že tato potravina naopak zlevňovala a to konkrétně o 1,92 %.

### 4. Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
*Odpověd:* Dle dat z primární tabulek jsem dospěl k tomu, že žádná z potravin neměla meziroční růst o více než 10 % než meziroční růst mezd.

### 5. Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
*Odpověd:* Ano, vliv HDP je patrný zejména u mezd, kde silný růst ekonomiky predikuje budoucí nárůst mzdové hladiny. U cen potravin je závislost méně zřetelná, jelikož do hry vstupují další faktory (sezónnost, globální trhy). Například po propadu HDP v roce 2009 následovalo období mzdové stagnace v letech 2010–2011.

## Závěr analýzy

Cílem projektu bylo posoudit dostupnost základních potravin v kontextu průměrných mezd v České republice a analyzovat vliv makroekonomických ukazatelů (HDP) na tyto veličiny v letech 2006–2018.

### Hlavní zjištění:
1. **Vývoj mezd:** Mzdy ve sledovaném období většinově rostly. Jedinou výraznější stagnaci či pokles v některých odvětvích bylo možné pozorovat v roce 2013, což reflektovalo dozvuk tehdejší ekonomické recese.
2. **Kupní síla:** Životní úroveň obyvatel se zvýšila. V roce 2018 si průměrný občan mohl pořídit o cca 27 kg chleba a o 102 litrů mléka více než v roce 2006.
3. **Dynamika cen:** Ceny potravin jsou mnohem kolísavější než mzdy. Nejpomaleji rostoucí cenovou hladinu vykázal **cukr krystal**, který v průměru meziročně zlevňoval.
4. **Cenové šoky:** Nebyl identifikován žádný rok, ve kterém by nárůst cen potravin překonal nárůst mezd o více než 10 procentních bodů. Ekonomika tedy v tomto směru zůstala stabilní.
5. **Vliv HDP:** Analýza potvrdila souvislost mezi růstem HDP a následným růstem mezd. Pozitivní vývoj HDP se na zvýšení mezd a kupní síly projevuje zpravidla s ročním zpožděním.

**Závěrečné shrnutí:**
Data jasně ukazují, že i přes dílčí výkyvy a krize rostla v ČR dostupnost potravin rychleji než jejich cena, což vedlo k celkovému posílení kupní síly obyvatelstva v celém sledovaném období.



