

  create  table SYSTEM.SIMPLE_STREAM_WITH_NAMESPACE_RESULTING_INTO_LONG_NAMES__dbt_tmp
  
  as
    
-- Final base SQL model
select
    ID,
    "DATE",
    airbyte_emitted_at,
    AIRBYTE_SIMPLE_STREAM_WITH_NAMESPACE_RESULTING_INTO_LONG_NAMES_HASHID
from SYSTEM.SIMPLE_STREAM_WITH_NAMESPACE_RESULTING_INTO_LONG_NAMES_AB3
-- SIMPLE_STREAM_WITH_NAMESPACE_RESULTING_INTO_LONG_NAMES from "SYSTEM"."AIRBYTE_RAW_SIMPLE_STREAM_WITH_NAMESPACE_RESULTING_INTO_LONG_NAMES"