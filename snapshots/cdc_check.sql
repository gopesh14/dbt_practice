{% snapshot cdc_check_snapshot %}

{{
    config(
      target_database='DENTREFERENCE',
      target_schema='common',
      unique_key='id',
      invalidate_hard_deletes=True,
      strategy='check',
      check_cols=['bal_amt']
    )
}}

select * from CDC_CHECK

{% endsnapshot %}