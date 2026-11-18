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
FROM {{ source('fivetran_src', 'retail_orders') }}