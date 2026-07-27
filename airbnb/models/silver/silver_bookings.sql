{{  
    config(
        materialized='incremental',
        unique_key='booking_id'
) }}

WITH latest_bookings AS (

SELECT
    *,
    ROW_NUMBER() OVER (
        PARTITION BY booking_id
        ORDER BY created_at DESC 
    ) AS rn
FROM {{ ref('bronze_bookings') }}
)


SELECT
    booking_id,
    listing_id,
    booking_date,
    {{ multiply('nights_book', 'booking_amount', 2)}} + cleaning_fee + service_fee AS total_amount,
    service_fee,
    cleaning_fee,
    booking_status,
    created_at
FROM latest_bookings
WHERE rn = 1












