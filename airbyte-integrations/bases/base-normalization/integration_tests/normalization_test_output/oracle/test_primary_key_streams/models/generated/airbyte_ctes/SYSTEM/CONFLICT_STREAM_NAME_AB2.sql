{{ config(schema="SYSTEM", tags=["top-level-intermediate"]) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    cast(ID as {{ dbt_utils.type_string() }}) as ID,
    cast(CONFLICT_STREAM_NAME as {{ type_json() }}) as CONFLICT_STREAM_NAME,
    airbyte_emitted_at
from {{ ref('CONFLICT_STREAM_NAME_AB1') }}
-- CONFLICT_STREAM_NAME
