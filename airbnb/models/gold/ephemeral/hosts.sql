{{ 
    config(
        materialized='ephemeral',
        unique_key='host_id'
    )
 }}


WITH hosts AS
(
    SELECT *,
        ROW_NUMBER () OVER(
            PARTITION BY host_id
            ORDER BY host_created_at DESC
        ) AS rn
FROM {{ ref("obt") }}
)

SELECT
    host_id,
    host_name,
    host_since,
    is_superhost,
    response_rate_quality,
    host_created_at
FROM hosts
WHERE rn =1

