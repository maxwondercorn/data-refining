UPDATE completed_audit ca
SET audit_lookup = (
SELECT
#audit.id,
CONCAT(area.location_id, '-', audit.old_id) AS audit_lookup
FROM completed_audit as audit
JOIN area ON area.id = audit.area_id
JOIN location on location_id = location.id
WHERE audit.id = ca.id
)