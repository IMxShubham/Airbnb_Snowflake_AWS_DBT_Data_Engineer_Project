{{ 
    config(
        materialized='incremental',
        unique_key='host_id'
        ) 
}}


SELECT 
    host_id,
    replace(host_name, ' ', '_') AS host_name,
    host_since,
    is_superhost,
    response_rate,
    replace
        (CASE 
            WHEN response_rate > 95 THEN 'very good'
            WHEN response_rate > 80 THEN 'good'
            WHEN response_rate > 60 THEN 'fair'
            ELSE 'poor'
        END,
         ' ', '_')
     AS response_rate_quality,
    created_at
FROM 
    {{ ref("bronze_hosts")}}
