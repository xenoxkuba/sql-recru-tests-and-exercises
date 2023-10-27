-- SELECT c.name, loc.street, COUNT(loc.id) AS num_locations FROM cities AS c
-- LEFT JOIN locations AS loc ON loc.city_name = c.name
-- GROUP BY c.name, loc.street;

SELECT c.name,  COUNT(loc.id) AS num_locations FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
GROUP BY c.name
HAVING COUNT(loc.id) > 1;