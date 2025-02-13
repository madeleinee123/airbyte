
  create or replace  view "AIRBYTE_DATABASE"._AIRBYTE_TEST_NORMALIZATION."CONFLICT_STREAM_NAME_CONFLICT_STREAM_NAME_CONFLICT_STREAM_NAME_AB2"  as (
    
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    _AIRBYTE_CONFLICT_STREAM_NAME_2_HASHID,
    cast(GROUPS as 
    varchar
) as GROUPS,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    convert_timezone('UTC', current_timestamp()) as _AIRBYTE_NORMALIZED_AT
from "AIRBYTE_DATABASE"._AIRBYTE_TEST_NORMALIZATION."CONFLICT_STREAM_NAME_CONFLICT_STREAM_NAME_CONFLICT_STREAM_NAME_AB1"
-- CONFLICT_STREAM_NAME at conflict_stream_name/conflict_stream_name/conflict_stream_name
where 1 = 1
  );
