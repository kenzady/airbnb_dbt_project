WITH
    l AS (
        SELECT * FROM {{ ref('dim_listings_cleansed')}}
    ),
    h AS (
    SELECT * FROM {{ ref('dim_hosts_cleansed')}}
    )

SELECT
    l.LISTING_ID,
    l.LISTING_NAME,
    l.ROOM_TYPE,
    l.MINIMUM_NIGHTS, 
    l.PRICE,
    l.HOST_ID,
    h.HOST_NAME,
    h.IS_SUPERHOST AS HOST_IS_SUPERHOST,
    l.CREATED_AT,
    GREATEST(l.UPDATED_AT, h.UPDATED_AT) AS UPDATED_AT -- making sure we take the most recent updated record
FROM l
LEFT JOIN h ON (h.HOST_ID = l.HOST_ID)