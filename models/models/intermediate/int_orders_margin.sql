SELECT
orders_id,
date_date,
revenue,
quantity,
Purchase_cost,
margin
FROM {{ref("int_sales_margin")}} AS m
JOIN {{ref("stg_raw__ship")}} AS s USING (orders_id)