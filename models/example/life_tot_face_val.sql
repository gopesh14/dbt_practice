{{ config(materialized='table',unique_key='TFV_SK',) }}

with final as (
    select * from {{ source('entreference_common','life_risk_tfv_dl2')}}
)

select * from final