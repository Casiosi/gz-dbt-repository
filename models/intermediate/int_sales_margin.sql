SELECT 
*,
CAST(quantity AS INT64) * CAST(purchase_price AS FLOAT64) AS Purchase_cost,
ROUND (CAST(revenue AS FLOAT64) - CAST(quantity AS INT64) * CAST(purchase_price AS FLOAT64),2) AS Margin
FROM {{ref("stg_raw__sales")}} AS sales
JOIN {{ref("stg_raw__product")}} AS product USING (products_id)