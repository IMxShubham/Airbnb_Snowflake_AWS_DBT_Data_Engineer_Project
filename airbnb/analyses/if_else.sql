{% set flag = 2 %}

SELECT * FROM {{ ref('bronze_listings')}}
{% if flag == 1 %}
    WHERE price_par_night < 140
{% else %}
    WHERE price_par_night > 140
{% endif %}

/*
{% set price_par_night = 140 %}
{% set room_type = 'private room' %}

SELECT *
FROM {{ ref('bronze_listings') }}
{% if price_par_night == 140 and room_type == 'private room' %}
    WHERE price_par_night < 140 AND room_type = 'private room'
{% else %}
    WHERE price_par_night > 140 AND room_type = 'private room'
{% endif %}
