select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employee e, salary s
where e.emp_no = s.emp_no

select first_name, last_name, hire_date
from employee
where hire_date between '01/01/1986' and '12/31/1986'

select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from department d, department_manager dm, employee e
where d.dept_no = dm.dept_no and 
dm.emp_no = e.emp_no

select e.emp_no, e.last_name, e.first_name, d.dept_name
from department d, employee e, department_employee de
where d.dept_no = de.dept_no and
de.emp_no = e.emp_no

select first_name, last_name, sex 
from employee
where first_name = 'Hercules'
and last_name like 'B%'

select e.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee de, employee e, department d
where d.dept_name = 'Sales' and
d.dept_no = de.dept_no and
de.emp_no = e.emp_no

select e.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee de, employee e, department d
where d.dept_name in ('Sales','Development') and
d.dept_no = de.dept_no and
de.emp_no = e.emp_no

select count(*), last_name
from employee
group by last_name 
order by last_name desc


