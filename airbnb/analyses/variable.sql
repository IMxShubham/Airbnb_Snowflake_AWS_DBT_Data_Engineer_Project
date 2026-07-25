{% set nights_booked = 1 %}

SELECT * FROM {{ ref('bronze_bookings') }}
WHERE NIGHTS_BOOK > {{nights_booked}}
ORDER BY NIGHTS_BOOK