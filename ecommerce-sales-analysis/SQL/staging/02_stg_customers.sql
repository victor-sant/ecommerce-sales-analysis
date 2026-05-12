SELECT TOP 10 *
FROM raw.customers;

SELECT COUNT(*) AS total_null
FROM raw.customers
WHERE customer_id IS NULL;

SELECT COUNT(*) AS total_null
FROM raw.customers
WHERE customer_city IS NULL;

SELECT
    customer_id,

    customer_unique_id,

    UPPER(customer_city) 
        AS customer_city,

    UPPER(customer_state) 
        AS customer_state

INTO stg.customers

FROM raw.customers;

SELECT TOP 10 *
FROM stg.customers;
