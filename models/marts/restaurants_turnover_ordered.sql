select * from {{ ref('stg_restaurants_turnover') }}
order by turnover desc
limit {{ var ("nb_restaurants_to_show") }}