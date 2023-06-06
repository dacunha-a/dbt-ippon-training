{{ config(materialized = 'table')}}

select * from {{ mockable_source("source", "orders", "sample_orders") }}