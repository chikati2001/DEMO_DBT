SELECT
    order_id,
    customer_id,
    order_date,
    product,
    category,
    quantity,
    price,
    discount,
    region,
    revenue
FROM {{ source('snowflake_raw', 'retail_orders') }}
