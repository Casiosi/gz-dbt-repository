SELECT
date_trunc(date_date,MONTH) AS month_date,
ROUND(SUM(ads_cost),2) AS ads_cost,
ROUND(SUM(ads_impression),2) AS ads_impression,
ROUND(SUM(nb_transcations),2) AS nb_transcations,
ROUND(SUM(revenue),2) AS revenue,
ROUND(AVG(average_basket),2) AS average_basket,
ROUND(SUM(margin),2) AS margin,
ROUND(SUM(Operational_margin),2) AS Operational_margin,
ROUND(SUM(ads_margin),2) AS ads_margin
FROM {{ref("finance_campaigns_day")}} 
GROUP BY date_trunc(date_date,MONTH)