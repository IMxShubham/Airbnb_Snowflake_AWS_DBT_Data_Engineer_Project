{{
    config(
        materialized='ephemeral',
        unique_key='listing_id'
    )
}}


WITH listings AS 
(
    SELECT *,
        ROW_NUMBER() OVER(
            PARTITION BY listing_id
            ORDER BY host_created_at DESC
        ) AS rn
FROM {{ ref("obt") }}
)


SELECT
    listing_id,
    property_type,
    room_type,
    city,
    country,
    price_per_night_tag,
    listing_created_at,
FROM listings
WHERE rn = 2
