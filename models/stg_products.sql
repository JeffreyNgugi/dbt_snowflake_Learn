SELECT ID as PROD_ID,
    CREATED_AT,
    MAKE,
    MODEL,
    YEAR,
    PRICE
FROM {{ source('airbyte_pull','products')}}