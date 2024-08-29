SELECT
    order_date,
    revenue - purchase as balance
FROM {{ ref('stg_balance') }}
GROUP BY order_date