{% macro function2(x) %}
case when dayname(TO_TIMESTAMP({{x}})) in ('Sat','Sun') then 'weekend'
else 'businessday'
end
                                                        

{% endmacro %}
