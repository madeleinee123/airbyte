{{ config(schema="SYSTEM", tags=["nested"]) }}
-- Final base SQL model
select
    AIRBYTE_PARTITION_HASHID,
    CURRENCY,
    airbyte_emitted_at,
    AIRBYTE_COLUMN___WITH__QUOTES_HASHID
from {{ ref('NESTED_STREAM_WITH_COMPLEX_COLUMNS_RESULTING_INTO_LONG_NAMES_PARTITION_COLUMN___WITH__QUOTES_AB3') }}
-- COLUMN___WITH__QUOTES at nested_stream_with_complex_columns_resulting_into_long_names/partition/column`_'with"_quotes from {{ ref('NESTED_STREAM_WITH_COMPLEX_COLUMNS_RESULTING_INTO_LONG_NAMES_PARTITION') }}
