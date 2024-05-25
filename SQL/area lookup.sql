SELECT
area.id,
location.code,
value_stream.name as VS,
area.name as area
FROM area
JOIN value_stream ON area.value_stream_id = value_stream.id
JOIN location ON area.location_id = location.id
WHERE area.location_id = 3
ORDER BY VS