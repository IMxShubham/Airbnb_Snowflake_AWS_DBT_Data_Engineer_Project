{{ 
    config(
        materialized='incremental',
        unique_key='listing_id'
) }}


WITH latest_listings AS (

SELECT
    *,
    ROW_NUMBER() OVER (
        PARTITION BY listing_id
        ORDER BY created_at DESC 
    ) AS rn
FROM {{ ref('bronze_listings') }}
)


SELECT
    listing_id,
    host_id,
    property_type,
    room_type,
    city,
    country,
    accommodates,
    bedroom,
    bathroom,
    price_per_night,
    {{ tag("price_per_night") }} AS price_per_night_tag,
    created_at  
FROM latest_listings
WHERE rn = 1












