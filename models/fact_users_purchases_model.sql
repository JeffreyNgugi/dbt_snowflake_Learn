{{
    config(
        materialized='table'
    )
}}


WITH users as (
    SELECT * FROM {{ ref("stg_users")}}
),

 purchases as (
    SELECT * FROM {{ ref("stg_purchases")}}
),

products as (
    SELECT * FROM {{ ref('stg_products')}}
)

SELECT *
FROM users
LEFT JOIN purchases ON users.ID = purchases.USER_ID
LEFT JOIN products ON purchases.PRODUCT_ID = products.PROD_ID
ORDER BY USER_ID