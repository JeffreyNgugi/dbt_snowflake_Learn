SELECT ID,
    NAME,
    NATIONALITY,
    CREATED_AT as users_created_at,
    LANGUAGE,
    GENDER,
    OCCUPATION,
    ACADEMIC_DEGREE,
    address:city::string as CITY,
    address:province::string as PROVINCE,
    address:country_code::string as COUNTRY_CODE
FROM {{ source('airbyte_pull','users')}}