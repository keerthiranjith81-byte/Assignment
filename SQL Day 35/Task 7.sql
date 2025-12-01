select 
case
when timestampdiff(year,hire_date,now())<1 then '<1 year'
when timestampdiff(year,hire_date,now()) between 1 and 3 then '1-3 year'
when timestampdiff(year,hire_date,now()) between 3 and 5 then '3-5 year'
else '5+ year'
end as tenure_bucket,
count(*) as employees_count
from employees
group by tenure_bucket
order by employees_count desc;