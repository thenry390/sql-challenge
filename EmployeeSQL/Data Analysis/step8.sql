select count(*), last_name
from employee
group by last_name 
order by last_name desc