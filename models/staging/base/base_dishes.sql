{{ config(materialized = 'table')}}

select * from {{ mockable_source("source", "dishes", "sample_dishes") }}