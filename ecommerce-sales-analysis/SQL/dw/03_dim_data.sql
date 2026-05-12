SELECT DISTINCT

    CAST(order_purchase_timestamp AS DATE)
        AS data,

    YEAR(order_purchase_timestamp)
        AS ano,

    MONTH(order_purchase_timestamp)
        AS mes_numero,

    DATENAME(MONTH, order_purchase_timestamp)
        AS nome_mes,

    DATEPART(QUARTER, order_purchase_timestamp)
        AS trimestre

INTO dw.dim_data

FROM stg.orders;