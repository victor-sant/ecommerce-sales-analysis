SELECT TOP 10 *
FROM raw.products;

SELECT COUNT(*) AS total_null
FROM raw.products
WHERE product_category_name IS NULL;

SELECT COUNT(*) AS total_null
FROM raw.products
WHERE product_weight_g IS NULL;

SELECT
    product_id,

    UPPER(product_category_name)
        AS product_category_name

INTO stg.products

FROM raw.products;

SELECT TOP 10 *
FROM stg.products;
