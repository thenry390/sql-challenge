select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employee e, salary s
where e.emp_no=s.emp_no