WITH 
    listings AS (
        SELECT * FROM {{ ref('dim_listings_cleansed')}}

    ),
    fact_reviews AS (
        SELECT * FROM {{ ref('fct_reviews')}}
    )
SELECT fact_reviews.review_date
FROM fact_reviews
LEFT JOIN listings ON (listings.LISTING_ID = fact_reviews.LISTING_ID)
WHERE fact_reviews.review_date <= listings.created_at