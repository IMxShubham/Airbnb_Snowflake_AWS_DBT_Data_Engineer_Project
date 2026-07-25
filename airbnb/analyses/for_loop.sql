{% set cols = ['property_type', 'country', 'price_par_night'] %}

SELECT
{% for col in cols %}
    {{ col }}
        {% if not loop.last %}, {% endif %}
{% endfor %}
FROM {{ ref('bronze_listings') }}