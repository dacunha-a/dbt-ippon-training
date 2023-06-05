select r.name, r.address,coalesce(sum(o.amount), 0) as turnover
from
    {{ source("source", "restaurants") }} as r
left join
    {{ source("source", "orders") }} as o
    on o.restaurant_identifier = r.identifier
group by r.name, r.address