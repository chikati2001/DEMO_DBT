with CTE as (
select 
TO_TIMESTAMP(STARTED_AT) as STARTED_AT,
date(TO_TIMESTAMP(STARTED_AT)) as date_started,
dayname(TO_TIMESTAMP(STARTED_AT)) as day_type,
month(TO_TIMESTAMP(STARTED_AT)) as month_,
{{function1('STARTED_AT')}} as session_,
{{function0('STARTED_AT')}} as P_T ,
{{function2('STARTED_AT')}} as b_w


from {{ source('DEMO', 'BIKE_TABLE') }}
where STARTED_AT != 'started_at'
)
select *
 from CTE