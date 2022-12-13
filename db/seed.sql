USE employeetracker_db;


SET FOREIGN_KEY_CHECKS = 0;
truncate roles;
truncate department;
truncate employees;
SET FOREIGN_KEY_CHECKS = 1;


insert INTO department(name)
values('Sales');
insert INTO department(name)
values('Engineering');
insert INTO department(name)
values('Finance');
insert INTO department(name)
values('Service');


-- Sales Department
insert INTO roles (title, salary, department_id)
values('Sales Manager', 50000, 1);

insert INTO roles(title, salary, department_id)
values('Salesperson',  40000, 1);


-- Engineering Department
insert INTO roles (title, salary, department_id)
values('Engineering Manager', 90000, 2);

insert INTO roles(title, salary, department_id)
values('Engineer',  60000, 2);


-- Finance Department
insert INTO roles (title, salary, department_id)
values('Finance Manager', 70000, 2);

insert INTO roles(title, salary, department_id)
values('Finance Person',  40000, 2);


insert INTO roles (title, salary, department_id)
values('Service Manager', 80000, 2);

insert INTO roles(title, salary, department_id)
values('Service Person',  40000, 2);

insert INTO employees (first_name, last_name, role_id, manager_id)
values('Sam', 'Johnson', 1, NULL);
insert INTO employees(first_name, last_name, role_id, manager_id)
values('Mark', 'Peterson', 2, 1);

SELECT * FROM department;
SELECT * FROM roles;
SELECT * FROM employees;