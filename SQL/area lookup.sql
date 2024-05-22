SELECT 
area.id,
area.name as area,
value_stream.name as `value strem`
FROM area
JOIN value_stream ON area.value_stream_id = value_stream.id
WHERE area.location_id = 3