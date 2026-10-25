with CTE as (
select 
TO_TIMESTAMP(STARTED_AT) as STARTED_AT,
date(STARTED_AT) as date_started,
dayname(date_started) as day_type,
case 
when day_type in ('Sat','Sun')
then 'weekend'
else 'businessday'
end as day_category,
month(date_started) as month_,
case
when month_ in (12,1,2)
then 'Winter'
when month_ in (3,4,5)
then 'spring'
when month_ in (6,7,8)
then 'summmer'
else 'autumn'
end as session_of_year

from {{ source('DEMO', 'BIKE_TABLE') }}
where STARTED_AT != 'started_at'
)
select *
 from CTE