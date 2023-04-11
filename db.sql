SELECT
  u.name AS user_name,
  SUM(t.revenue) AS revenue,
  SUM(t.distance) AS distance_travelled,
  COUNT(DISTINCT t.cab_id) AS num_cabs,
  COUNT(t.id) AS total_trips,
  (SELECT c.id FROM cabs c WHERE c.id = most_active_cab) AS most_active_cab_id,
  (SELECT c.make FROM cabs c WHERE c.id = most_active_cab) AS most_active_cab_make,
  (SELECT c.model FROM cabs c WHERE c.id = most_active_cab) AS most_active_cab_model,
  (SELECT COUNT(*) FROM trips t2 WHERE t2.cab_id = most_active_cab) AS most_active_cab_trips
FROM
  users u
  JOIN trips t ON t.user_id = u.id
WHERE
  DATE(t.date) = '2023-04-11'
GROUP BY
  u.id
ORDER BY
  revenue DESC;



-- //trips.user_id: This index would allow the database to quickly join trips with their corresponding users, which is used in the JOIN condition.