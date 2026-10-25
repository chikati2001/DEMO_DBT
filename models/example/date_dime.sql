with CTE as (
select 
TO_TIMESTAMP(STARTED_AT) as STARTED_AT,
date(STARTED_AT) as date_started,
dayname(date_started) as day_type,
case 
when day_type in ('Sat','Sun')
then 'weekend'
else 'businessday'
end as day_category
from {{ source('DEMO', 'BIKE_TABLE') }}
where STARTED_AT != 'started_at'
)
select *
 from CTE