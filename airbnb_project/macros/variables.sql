{% macro learn_variables() %}
    {% set your_name_jinja = 'Kenza' %}
    {{ log('Hello Jinja user ' ~ your_name_jinja ~ '!', info=True) }}

    {{ log('Hello DBT user ' ~ var("user_name") ~ '!', info = True)}}
{% endmacro %}
