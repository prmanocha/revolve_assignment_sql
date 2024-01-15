-- 3. Which plane flew the most number of hours? And how many hours?-
SELECT p.tailnum,f.flight, COALESCE(SUM(CAST(f.air_time as INT)),0) AS total_hours
FROM planes p
LEFT JOIN flights f ON p.tailnum = f.tailnum
GROUP BY p.tailnum,f.flight
ORDER BY total_hours DESC limit 5;