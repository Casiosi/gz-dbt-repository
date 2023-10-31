SELECT
orders_id,
date_date,
ROUND(SUM(revenue),2) AS revenue,
ROUND(sum(quantity),2) AS quantity,
ROUND(SUM(Purchase_cost),2) AS Purchase_cost,
ROUND(SUM(margin),2) AS margin
FROM {{ref("int_sales_margin")}} AS m
JOIN {{ref("stg_raw__ship")}} AS s USING (orders_id)
GROUP BY orders_id, date_date