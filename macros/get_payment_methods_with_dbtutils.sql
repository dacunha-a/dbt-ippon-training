{% macro get_payment_methods_with_dbtutils() %}
    {% set payment_methods = dbt_utils.get_column_values(table=ref('base_orders'), column='PAYMENT_METHOD') %}
    {{ return(payment_methods)}}
{% endmacro %}