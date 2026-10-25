with bike as (
    select 
    distinct
    START_STATION_ID,
    START_STATION_NAME,
    START_LAT,
    START_LNG
    from {{ source('DEMO', 'BIKE_TABLE') }}
    where RIDE_ID != 'ride_id'


)

select * from bike