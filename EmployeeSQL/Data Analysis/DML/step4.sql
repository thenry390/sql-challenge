select e.emp_no, e.last_name, e.first_name, d.dept_name
from department d, employee e, department_employee de
where d.dept_no = de.dept_no and
de.emp_no = e.emp_no