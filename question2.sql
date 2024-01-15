-- . Which manufacturer's planes had most no of flying hours? And how many hours?
select p.manufacturer,count(f.air_time) as num_hours
from flights f
left join planes p
on f.tailnum = p.tailnum
group by p.manufacturer
order by num_hours desc limit 1;