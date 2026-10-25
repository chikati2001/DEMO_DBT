{% macro function1(x) %}
case when month(TO_TIMESTAMP({{x}})) in (12,1,2) then 'spring'
when month(TO_TIMESTAMP({{x}})) in (3,4,5) then 'autumn'
when month(TO_TIMESTAMP({{x}})) in (6,7,8) then 'winter'
else 'summer'
end 

{% endmacro %}