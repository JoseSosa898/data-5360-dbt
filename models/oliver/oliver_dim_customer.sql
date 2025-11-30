{{ config(
    materialized = 'table',
    schema = 'dw_oliver'
    )
}}


select
customerid as cust_key,
customerid,
firstname,
lastname,
email,
phonenumber,
state
FROM {{ source('oliver_landing', 'customer') }}