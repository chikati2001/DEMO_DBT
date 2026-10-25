{%  macro function1(x) %}
case when month_({{x}}) in (12,1,2) then 'Winter'
when month_({{x}}) in (3,4,5) then 'Spring'
when month_({{x}}) in (6,7,8) then 'Summer'
else 'Autumn' end

{% endmacro %}