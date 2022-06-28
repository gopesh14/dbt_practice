{% snapshot blmbrg_snapshot %}

{{
    config(
      target_database='renterippb',
      target_schema='core',
      unique_key='tfv_sk',

      strategy='check',
      check_cols='all'
    )
}}

select * from CDC_TABLE

{% endsnapshot %}