SELECT ID as PROD_ID,
    CREATED_AT as products_created_at,
    MAKE,
    MODEL,
    YEAR,
    PRICE
FROM {{ source('airbyte_pull','products')}}