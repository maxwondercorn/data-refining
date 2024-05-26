SELECT
audit.audit_lookup as lookup,
audit.id,
year,
location.code AS code,
cah.findings_html,
cah.rejects_html,
cah.verified_html
#area.name AS Area,
# score
#audit.name
FROM completed_audit as audit
JOIN area ON area.id = audit.area_id
JOIN location on location_id = location.id 
JOIN completed_audit_html cah ON audit.audit_lookup = cah.audit_lookup
# WHERE audit.year = 2019 
ORDER BY id DESC, code, audit.period, audit.name