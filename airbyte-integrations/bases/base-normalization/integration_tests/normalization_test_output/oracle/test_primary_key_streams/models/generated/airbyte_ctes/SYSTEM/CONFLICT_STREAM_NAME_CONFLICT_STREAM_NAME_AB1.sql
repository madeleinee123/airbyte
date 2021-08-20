{{ config(schema="SYSTEM", tags=["nested-intermediate"]) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
select
    AIRBYTE_CONFLICT_STREAM_NAME_HASHID,
    {{ json_extract('CONFLICT_STREAM_NAME', ['conflict_stream_name']) }} as CONFLICT_STREAM_NAME,
    airbyte_emitted_at
from {{ ref('CONFLICT_STREAM_NAME') }}
where CONFLICT_STREAM_NAME is not null
-- CONFLICT_STREAM_NAME at conflict_stream_name/conflict_stream_name
