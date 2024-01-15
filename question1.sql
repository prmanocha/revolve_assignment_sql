SELECT p.manufacturer, COUNT(f.flight) AS num_flights
FROM planes p
LEFT JOIN flights f ON p.tailnum = f.tailnum
GROUP BY p.manufacturer
ORDER BY num_flights DESC limit 5;