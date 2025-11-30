{{ config(
    materalized = 'table',
    schema = 'dw_oliver'
    )
}}

select
    customerid as customer_key,
    customerid,
    firstname,
    lastname,
    email,
    phone
from {{ source('oliver_landing', 'customers') }}