CREATE OR REPLACE TABLE hosts (
    host_id NUMBER PRIMARY KEY,
    host_name STRING,
    host_since DATE,
    is_superhost BOOLEAN,
    response_rate NUMBER,
    created_at TIMESTAMP
);

CREATE OR REPLACE TABLE listings (
    listing_id NUMBER PRIMARY KEY,
    host_id NUMBER,
    property_type STRING,
    room_type STRING,
    city STRING,
    country STRING,
    accommodates NUMBER,
    bedroom NUMBER, 
    bathroom NUMBER,
    price_per_night NUMBER,
    created_at TIMESTAMP
);

CREATE OR REPLACE TABLE bookings (
    booking_id STRING PRIMARY KEY,
    listing_id NUMBER,
    booking_date DATE,
    nights_book NUMBER,
    booking_amount NUMBER,
    cleaning_fee NUMBER,
    service_fee NUMBER,
    booking_status STRING,
    created_at TIMESTAMP
);