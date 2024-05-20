SELECT
CONCAT(area.location_id, '-', audit.old_id) AS audit_lookup,
audit.id,
# period,
year,
# area.location_id AS location,
location.code AS code,
# value_stream.name AS 'Value Stream',
area.name AS Area,

# score
audit.name
FROM completed_audit as audit
JOIN area ON area.id = audit.area_id
JOIN location on location_id = location.id 
JOIN value_stream ON area.value_stream_id = value_stream.id
JOIN user ON audit.current_manager = user.id
# WHERE audit.year = 2019 
ORDER BY code, audit.period, audit.name