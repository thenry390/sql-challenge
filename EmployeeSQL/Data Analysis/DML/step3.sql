select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from department d, department_manager dm, employee e
where d.dept_no = dm.dept_no and 
dm.emp_no = e.emp_no