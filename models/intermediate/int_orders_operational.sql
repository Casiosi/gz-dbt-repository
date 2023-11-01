SELECT
orders_id,
date_date,
revenue,
quantity,
Purchase_cost,
shipping_fee,
logcost,
ship_cost,
margin,
ROUND (margin + shipping_fee - logcost - CAST(ship_cost AS FLOAT64),2) AS Operational_margin
FROM {{ref("int_orders_margin")}} AS m
JOIN {{ref("stg_raw__ship")}} AS s USING (orders_id)