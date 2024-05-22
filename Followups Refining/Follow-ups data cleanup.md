1. Row excel data: Populate the SiteId column with the ID from the the `site` table
1. Import into Open Refine
1. Apply Step 1 steps
1. Export as a XLSX file "file 2"
1. Create a audit lookup table using `audit lookup.sql`
    - Export generated data as CSV
    - Add sheet to exported excel file "file 2"
    - import CSV data as text, convert, etc
1. Create a vlookup using `audit_lookup` to populate `audit_id` column
1. Make `audit_id` per,amte before saving the spreasheet.
1. Import new spreadsheet into Open Refine
1. Apply `Step 2 JSON`
1. Assign user ids for column created_by
1. Assign user ids for column modified_by
1. Assign user ids for column assigned_to
1. Assign user ids for column work_audit_by
1. Remove column audit_score