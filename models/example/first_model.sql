{{ config(materialized='table') }}

with source_data as (

    select * from SAMPLE_TABLE

)

select *
from source_data