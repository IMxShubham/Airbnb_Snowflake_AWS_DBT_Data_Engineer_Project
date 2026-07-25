{{  
    config(
        materialized='incremental',
        unique_key='booking_id'
) }}


SELECT
    booking_id,
    listing_id,
    booking_date,
    {{ multiply('nights_book', 'booking_amount', 2)}} + cleaning_fee + service_fee AS total_amount,
    service_fee,
    cleaning_fee,
    booking_status,
    created_at
FROM {{ ref("bronze_bookings") }}