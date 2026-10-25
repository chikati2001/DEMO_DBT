{% macro function0(x) %}
case when TO_TIMESTAMP({{x}}) < current_date then 'past'
else 'future' 
end 

{% endmacro %}