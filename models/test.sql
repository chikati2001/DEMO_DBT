select 
* 
from {{ source('demo', 'BIKE_TABLE') }}
limit 10