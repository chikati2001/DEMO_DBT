select 
* 
from {{ source('DEMO', 'BIKE_TABLE') }}
limit 10