{{ config(schema="SYSTEM", tags=["nested-intermediate"]) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    AIRBYTE_CONFLICT_STREAM_ARRAY_2_HASHID,
    cast(ID as {{ dbt_utils.type_bigint() }}) as ID,
    airbyte_emitted_at
from {{ ref('CONFLICT_STREAM_ARRAY_CONFLICT_STREAM_ARRAY_CONFLICT_STREAM_NAME_AB1') }}
-- CONFLICT_STREAM_NAME at conflict_stream_array/conflict_stream_array/conflict_stream_name
