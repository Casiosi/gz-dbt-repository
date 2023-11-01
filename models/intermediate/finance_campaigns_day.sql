SELECT
*,
ROUND(Operational_margin - ads_cost,2) AS ads_margin
FROM {{ref("int_campaigns_day")}} AS m
JOIN {{ref("finance_days")}} AS s USING (date_date)
