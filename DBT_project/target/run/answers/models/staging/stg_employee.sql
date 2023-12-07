
  create view "projectdb"."stg"."stg_employee__dbt_tmp"
    
    
  as (
    

WITH source AS (
	SELECT *
	FROM "projectdb"."public"."employees"
)
SELECT employee_id, first_name, last_name, email, hire_date, department, gender, salary, region_id FROM source
  );