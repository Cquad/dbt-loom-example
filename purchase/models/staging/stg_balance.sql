WITH revenue AS (
    SELECT *
    FROM {{ ref('core', 'orders') }}
)

SELECT *
FROM revenue
LEFT JOIN {{ ref('purchase') }} ON 1 = 1