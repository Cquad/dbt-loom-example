WITH revenue AS (
    SELECT *
    FROM {{ ref('finance', 'revenue') }}
)

SELECT *
FROM orders
LEFT JOIN {{ ref('purchase') }} ON 1 = 1