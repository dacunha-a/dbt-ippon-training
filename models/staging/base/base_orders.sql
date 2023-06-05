{{ config(materialized = 'table')}}

select distinct * from {{ source("source", "orders") }}