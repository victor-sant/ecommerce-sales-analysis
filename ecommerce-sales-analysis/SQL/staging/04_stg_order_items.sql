SELECT TOP 10 *
FROM raw.order_items;

SELECT COUNT(*) AS total_null
FROM raw.order_items
WHERE price IS NULL;

SELECT COUNT(*) AS total_null
FROM raw.order_items
WHERE freight_value IS NULL;

SELECT
    order_id,
    product_id,
    COUNT(*) AS total
FROM raw.order_items
GROUP BY
    order_id,
    product_id
HAVING COUNT(*) > 1;

SELECT
    order_id,

    order_item_id,

    product_id,

    seller_id,

    shipping_limit_date,

    CAST(price AS DECIMAL(10,2))
        AS price,

    CAST(freight_value AS DECIMAL(10,2))
        AS freight_value

INTO stg.order_items

FROM raw.order_items;

SELECT TOP 10 *
FROM stg.order_items;
