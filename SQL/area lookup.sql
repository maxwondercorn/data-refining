SELECT 
area.id,
value_stream.name as VS,
area.name as area
FROM area
JOIN value_stream ON area.value_stream_id = value_stream.id
WHERE area.location_id = 3
ORDER BY VS