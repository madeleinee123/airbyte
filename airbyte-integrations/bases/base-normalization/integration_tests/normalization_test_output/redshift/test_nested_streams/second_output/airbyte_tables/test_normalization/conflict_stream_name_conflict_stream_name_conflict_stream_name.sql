

  create  table
    "integrationtests".test_normalization."conflict_stream_name_conflict_stream_name_conflict_stream_name__dbt_tmp"
    
    
      compound sortkey(_airbyte_emitted_at)
  as (
    
with __dbt__cte__conflict_stream_name_conflict_stream_name_conflict_stream_name_ab1 as (

-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
select
    _airbyte_conflict_stream_name_2_hashid,
    case when json_extract_path_text(conflict_stream_name, 'groups', true) != '' then json_extract_path_text(conflict_stream_name, 'groups', true) end as groups,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    getdate() as _airbyte_normalized_at
from "integrationtests".test_normalization."conflict_stream_name_conflict_stream_name" as table_alias
-- conflict_stream_name at conflict_stream_name/conflict_stream_name/conflict_stream_name
where 1 = 1
and conflict_stream_name is not null
),  __dbt__cte__conflict_stream_name_conflict_stream_name_conflict_stream_name_ab2 as (

-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    _airbyte_conflict_stream_name_2_hashid,
    cast(groups as varchar) as groups,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    getdate() as _airbyte_normalized_at
from __dbt__cte__conflict_stream_name_conflict_stream_name_conflict_stream_name_ab1
-- conflict_stream_name at conflict_stream_name/conflict_stream_name/conflict_stream_name
where 1 = 1
),  __dbt__cte__conflict_stream_name_conflict_stream_name_conflict_stream_name_ab3 as (

-- SQL model to build a hash column based on the values of this record
select
    md5(cast(coalesce(cast(_airbyte_conflict_stream_name_2_hashid as varchar), '') || '-' || coalesce(cast(groups as varchar), '') as varchar)) as _airbyte_conflict_stream_name_3_hashid,
    tmp.*
from __dbt__cte__conflict_stream_name_conflict_stream_name_conflict_stream_name_ab2 tmp
-- conflict_stream_name at conflict_stream_name/conflict_stream_name/conflict_stream_name
where 1 = 1
)-- Final base SQL model
select
    _airbyte_conflict_stream_name_2_hashid,
    groups,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    getdate() as _airbyte_normalized_at,
    _airbyte_conflict_stream_name_3_hashid
from __dbt__cte__conflict_stream_name_conflict_stream_name_conflict_stream_name_ab3
-- conflict_stream_name at conflict_stream_name/conflict_stream_name/conflict_stream_name from "integrationtests".test_normalization."conflict_stream_name_conflict_stream_name"
where 1 = 1
  );