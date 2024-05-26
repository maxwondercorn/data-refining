SELECT year, 
location.code, 
ROUND(AVG(score), 1) AS score
FROM `completed_audit`
JOIN area ON area_id = area.id
JOIN location ON location_id = location.id
group by code, year
