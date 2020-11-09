select e.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee de, employee e, department d
where d.dept_name in ('Sales','Development') and
d.dept_no = de.dept_no and
de.emp_no = e.emp_no