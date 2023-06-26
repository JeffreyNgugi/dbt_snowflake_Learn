SELECT ID as purchase_id,
    USER_ID,
    PRODUCT_ID,
    ADDED_TO_CART_AT,
    PURCHASED_AT,
    RETURNED_AT
FROM {{ source('airbyte_pull','purchases')}}