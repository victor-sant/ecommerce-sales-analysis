SELECT DISTINCT

    product_id,

    product_category_name

INTO dw.dim_produto

FROM stg.products;