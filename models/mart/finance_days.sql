{{ config(materialized='table') }}


SELECT
date_date,
COUNT(orders_id) AS nb_transcations,
ROUND (SUM(revenue),2) AS revenue,
ROUND(AVG (revenue),2) AS average_basket,
ROUND(SUM (margin),2) AS margin,
ROUND(SUM (Operational_margin),2) AS Operational_margin
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
