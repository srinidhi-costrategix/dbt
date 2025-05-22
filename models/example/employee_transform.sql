{{ config(materialized='table') }}
with source_data as (
select _fivetran_synced,first_name,role
from google_sheets.ft_employees
)
select *
from source_data
