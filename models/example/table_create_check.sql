
{%- set table_ddl -%}
(
    TABLE_ID NUMBER(19) NOT NULL,
    TEXT_COL VARCHAR(30) NOT NULL,
    PRIMARY KEY (TABLE_ID)
)
{%- endset -%}

{{ config(materialized='table',unique_key='TABLE_ID',table_ddl=table_ddl) }}
