{% set configs = [
    {
        "table": "AIRBNB.gold.obt",
        "columns": "gold_obt.booking_id, gold_obt.listing_id, gold_obt.host_id, gold_obt.total_amount, gold_obt.service_fee, gold_obt.cleaning_fee, gold_obt.accommodates, gold_obt.bedroom, gold_obt.bathroom, gold_obt.price_per_night, gold_obt.response_rate",
        "alias": "gold_obt"
    },
    {
        "table": "AIRBNB.gold.dim_listings",
        "columns": "",
        "alias": "dim_listings",
        "join_condition": "gold_obt.listing_id = dim_listings.listing_id"
    },
    {
        "table": "AIRBNB.gold.dim_hosts",
        "columns": "",
        "alias": "dim_hosts",
        "join_condition": "gold_obt.host_id = dim_hosts.host_id"
    }
] %}



SELECT
        {{ configs[0]['columns'] }}
FROM 
    {% for config in configs %}
    {% if loop.first %}
        {{ config['table'] }} AS {{ config['alias'] }}
    {% else %}
        LEFT JOIN {{ config['table'] }} AS {{ config['alias'] }}
        ON {{ config['join_condition'] }}
        {% endif %}
        {% endfor %}        
        
