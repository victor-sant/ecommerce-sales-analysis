SELECT

    oi.order_id,

    oi.order_item_id,

    oi.product_id,

    o.customer_id,

    CAST(o.order_purchase_timestamp AS DATE)
        AS data,

    oi.price,

    oi.freight_value,

    (oi.price + oi.freight_value)
        AS valor_total

INTO dw.fato_vendas

FROM stg.order_items oi

INNER JOIN stg.orders o
    ON oi.order_id = o.order_id;