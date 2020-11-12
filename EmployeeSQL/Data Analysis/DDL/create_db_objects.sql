-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ca5lT7
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
CREATE TABLE "department" (
    "dept_no" varchar(30)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "department_employee" (
    "emp_no" varchar(30)   NOT NULL,
    "dept_no" varchar(30)   NOT NULL,
    CONSTRAINT "pk_department_employee" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "department_manager" (
    "dept_no" varchar(30)   NOT NULL,
    "emp_no" varchar(30)   NOT NULL,
    CONSTRAINT "pk_department_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "employee" (
    "emp_no" varchar(30)   NOT NULL,
    "emp_title_id" varchar(30)   NOT NULL,
    "birthdate" date   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" char(1)   NOT NULL,
    "hire_date" date  NOT NULL,
    CONSTRAINT "pk_employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salary" (
    "emp_no" varchar(30)   NOT NULL,
    "salary" integer   NOT NULL,
    CONSTRAINT "pk_salary" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "title" (
    "title_id" varchar(30)   NOT NULL,
    "title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "department_employee" ADD CONSTRAINT "fk_department_employee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "department_employee" ADD CONSTRAINT "fk_department_employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "title" ("title_id");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

