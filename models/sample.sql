SELECT *
FROM {{ source('airbyte_pull','users')}}