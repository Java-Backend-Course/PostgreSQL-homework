-- 1
CREATE DATABASE "CompanyDB";

-- 2 3
CREATE TABLE departments (
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
	emp_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	dob DATE NOT NULL,
	department_id INT NOT NULL REFERENCES departments(department_id)
);

CREATE TABLE projects (
	project_id SERIAL PRIMARY KEY,
	project_name VARCHAR(100) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE CHECK (end_date >= start_date)
);

CREATE TABLE employeeprojects (
	emp_id INT NOT NULL REFERENCES employees(emp_id),
	project_id INT NOT NULL REFERENCES projects(project_id),
	PRIMARY KEY (emp_id, project_id)
);