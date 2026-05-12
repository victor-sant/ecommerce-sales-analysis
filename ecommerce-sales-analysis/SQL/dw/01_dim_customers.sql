SELECT DISTINCT

    customer_id,

    customer_unique_id,

    customer_city,

    customer_state

INTO dw.dim_cliente

FROM stg.customers;