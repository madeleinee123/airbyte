
  create view SYSTEM.CONFLICT_STREAM_ARRAY_CONFLICT_STREAM_ARRAY_AB2__dbt_tmp as
    
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    AIRBYTE_CONFLICT_STREAM_ARRAY_HASHID,
    CONFLICT_STREAM_NAME,
    airbyte_emitted_at
from SYSTEM.CONFLICT_STREAM_ARRAY_CONFLICT_STREAM_ARRAY_AB1
-- CONFLICT_STREAM_ARRAY at conflict_stream_array/conflict_stream_array
