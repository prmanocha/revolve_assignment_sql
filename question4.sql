-- 4. Which destination had most delay in flights?
SELECT dest,sum(cast(air_time as INT)) as hours_delay
from flights
group by dest
order by hours_delay desc limit 5;