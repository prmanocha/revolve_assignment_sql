-- 5. Which manufactures planes had covered most distance? And how much distance?
select p.tailnum,p.manufacturer,sum(f.distance) as total_distance
from planes p
left join flights f
on p.tailnum = f.tailnum
where f.distance is not null
group by p.manufacturer,p.tailnum
order by total_distance desc;

