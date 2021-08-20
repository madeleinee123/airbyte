
  create view SYSTEM.CONFLICT_STREAM_NAME_AB3__dbt_tmp as
    
-- SQL model to build a hash column based on the values of this record
select
    ora_hash(
        'ID' || '~' ||
        'CONFLICT_STREAM_NAME'
    ) as AIRBYTE_CONFLICT_STREAM_NAME_HASHID,
    tmp.*
from SYSTEM.CONFLICT_STREAM_NAME_AB2 tmp
-- CONFLICT_STREAM_NAME
