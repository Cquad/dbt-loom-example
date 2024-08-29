SELECT
    order_date,
    SUM(amount_excl_vat - purchase) as balance
FROM {{ ref('stg_balance') }}
GROUP BY order_date