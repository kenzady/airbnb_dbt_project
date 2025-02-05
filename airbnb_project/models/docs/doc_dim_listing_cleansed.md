{% docs dim_listing_cleansed__listing_id %}
Primary key for the listing.
{% enddocs %}

{% docs dim_listing_cleansed__listing_name %}
Title of the listing chosen by the host.
{% enddocs %}

{% docs dim_listing_cleansed__room_type %}
Type of the appartment/room. 

Can be 'Entire home/apt', 'Private room', 'Shared room' or'Hotel room'.
{% enddocs %}

{% docs dim_listing_cleansed__minimum_nights %}
Minimum number of nights required to rent this property. 

Keep in mind that old listings might have `minimum_nights` set 
to 0 in the source tables. Our cleansing algorithm updates this to `1`.
{% enddocs %}

{% docs dim_listing_cleansed__host_id %}
The hosts's id. References the host table.
{% enddocs %}

{% docs dim_listing_cleansed__price %}
Price of the listing for one night.
{% enddocs %}

