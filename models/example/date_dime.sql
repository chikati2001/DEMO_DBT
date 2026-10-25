with CTE as (
select 
TO_TIMESTAMP(STARTED_AT) as STARTED_AT,
date(TO_TIMESTAMP(STARTED_AT)) as date_started,
dayname(TO_TIMESTAMP(STARTED_AT)) as day_type,
case 
when dayname(TO_TIMESTAMP(STARTED_AT)) in ('Sat','Sun')
then 'weekend'
else 'businessday'
end as day_category,
month(TO_TIMESTAMP(STARTED_AT)) as month_


from {{ source('DEMO', 'BIKE_TABLE') }}
where STARTED_AT != 'started_at'
)
select *
 from CTE