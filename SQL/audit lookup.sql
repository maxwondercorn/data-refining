SELECT
# period,
year,
area.location_id AS location,
# value_stream.name AS 'Value Stream',
area.name AS Area,
CONCAT(area.location_id, '-', audit.old_id) AS audit_lookup,
# score
audit.name
FROM audit
JOIN area ON area.id = audit.area_id
JOIN value_stream ON area.value_stream_id = value_stream.id
JOIN user ON audit.current_manager = user.id
# WHERE audit.year = 2019 
ORDER BY audit.period, audit.name