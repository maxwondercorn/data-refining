Basic steps to refine GMP Areas list data

1.  Export the dump view for the SharePoint areas table
1.  Open resulting Excel file in OpenRefine
1.  Create a new project 
1.  Apply `GMP Areas - Basic Refine.json` in OpenRefine Undo/Redo
1.  `id` - Edit Cells -> Transform...
    - Take location_id for the site, multiply by 100 and add it the area_id value
    - For example for BurrRidge area ids: location=id = 3, x100 = 300. Transform expression: value + 300
1.  `location_id` - Edit Cells -> Transform...
    - Change values to the location_id from the location table.  i.e. 3 for BurrRidge
1.  Use Facet->Text facet on vsm_name column to get unqiue names
    - Add VSM's to user table. Use 7 for `role_id`, can skip adding email address for conveinence
    - Convert text name to id, to track adding users to table
1.  Create value streams in value_stream table
    - `value_stream_id` - Facet -> Text facet...
    - Add value stream to value_stream table
    - Replace value stream name with new vs_id
    - Note: `display_order` will default to 10
1.  Delete column `vsm_name`
1.  Add `created_by` names to user table
    - Use Facet -> Text facet... on `created_by` columnt to get unique names
    - Add name to user table, use 4 for `role_id`
    - Can skip adding email address for conveinence
    - Convert name to new `user_id` value
1.  Add `updated_by` names to user table
    - Use Facet -> Text facet... on `updated_by` columnt to get unique names
    - Add name to user table, use 4 for `role_id`
    - Can skip adding email address for conveinence
    - Convert name to new `user_id` value
1.  Make sure any empty vales in `instructions` columm are set to NULL
1.  Export the data to sql
    - Set area_id to INT, Size 10 - Click `Apply all` button
    - Set `name` to VARCHAR, Size 100
    - Set `short_name` to VARCHAR, size 30
    - Set `owners` to VARCHAR, size 500
    - Set `target_score` to NUMERIC, size blank
    - Set `instructions` to VARCHAR, size 500
    - Set `is_active` to INT, size 1
    - Set `created_at` to TIMESTAMP
    - Set `updated_at` to TIMESTAMP

    - On download tab, set Table name to `area`
    - Preview and add data to database
    - Download a copy of SQL for archiving