{{ 
    config(
        materialized='ephemeral',
        unique_key='booking_id'
    )
 }}

WITH bookings AS
(
    SELECT *,
        ROW_NUMBER () OVER (
            PARTITION BY booking_id
            ORDER BY created_at DESC
        ) AS rn
FROM {{ ref("obt") }}
)

SELECT
    booking_id,
    booking_date,
    booking_status,
    created_at
FROM bookings
WHERE rn = 1 
