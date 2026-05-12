SELECT TOP 10 *
FROM raw.orders;

SELECT
    COUNT(*) AS total_nulls
FROM raw.orders
WHERE order_purchase_timestamp IS NULL;

SELECT
    order_id,
    customer_id,
    order_status,

    CAST(order_purchase_timestamp AS DATETIME) 
        AS order_purchase_timestamp

INTO stg.orders

FROM raw.orders;

SELECT TOP 10 *
FROM stg.orders;

