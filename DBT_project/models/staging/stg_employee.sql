{{
  config(
    materialized = 'view'
    )
}}

WITH source AS (
	SELECT *
	FROM {{ source('public', 'employees') }}
)
SELECT employee_id, first_name, last_name, email, hire_date, department, gender, salary, region_id FROM source
