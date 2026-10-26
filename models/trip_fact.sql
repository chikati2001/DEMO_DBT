with  TRIPS as (
    select
    RIDE_ID,
    RIDEABLE_TYPE,
    date(TO_TIMESTAMP(STARTED_AT))as TRIP_DATE,
    START_STATION_ID,
    END_STATION_ID,
    MEMBER_CASUAL,
    date(TO_TIMESTAMP(ENDED_AT)) as END_DATE,
    TIMESTAMPDIFF(second,TO_TIMESTAMP(STARTED_AT),TO_TIMESTAMP(ENDED_AT)) as time_stamp_diff

     from {{ source('DEMO', 'BIKE_TABLE') }}
    where RIDE_ID != 'ride_id'
)
select * from TRIPS