{% macro function1(x) %}
case when TO_TIMESTAMP({{x}}) < CURRENT_DATE then 'PAST'
else 'FUTURE'
END
{% endmacro %}

{% macro get_season(x) %}
CASE
when MONTH(TO_TIMESTAMP({{x}})) in (12,1,2)
then 'WINTER'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (5,3,4)
then 'SPRING'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (6,7,8)
then 'SUMMER'
ELSE 'AUTUM'
END
{% endmacro %}


{% macro day_type(x) %}
CASE 
when  DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat','Sun')
then 'WEEKEND'
else 'BUSINESSDAY'
END
{% endmacro %}