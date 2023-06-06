{{ config(materialized = 'table')}}

select * from {{ mockable_source("source", "restaurants", "sample_restaurants") }}