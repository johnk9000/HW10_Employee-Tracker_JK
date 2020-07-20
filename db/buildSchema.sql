DROP DATABASE IF EXISTS hw10_employee_tracker_db;
CREATE DATABASE hw10_employee_tracker_db;
USE hw10_employee_tracker_db;

CREATE TABLE department(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  name VARCHAR(100),
  role VARCHAR(100),
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT, --to hold reference to department role belongs to
  PRIMARY KEY (id)
);

CREATE TABLE employee(
  id INT(10) AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  role_id INT, --to hold reference to role employee has
  manager_id INT NULL, --to hold reference to another employee that manager of the current employee. This field may be null if the employee has no manager
  PRIMARY KEY (id) 
);
-- Seeding DEPARTMENT table: sales x2
INSERT INTO department (name, role, title, salary, department_id)
VALUES ("Sales", "Sales Person", "Account Manager", 60000, 100);

INSERT INTO department (name, role, title, salary, department_id)
VALUES ("Sales", "Management", "Sales Manager", 120000, 100);
-- Seeding DEPARTMENT table: engineering x2
INSERT INTO department (name, role, title, salary, department_id)
VALUES ("Engineering", "Engineer", "Electric Engineer", 90000, 200);

INSERT INTO department (name, role, title, salary, department_id)
VALUES ("Engineering", "Developer", "Software Developer", 70000, 200);
-- Seeding 6 Employees
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES("Alice", "Anonymous", 1, 1);

INSERT INTO employee (first_name, last_name, role_id)
VALUES("Bob", "Builder", 2); -- Sales manager (role #2)

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES("Charles", "Cheese", 3, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES("Danielle", "Daniels", 4, 2);

INSERT INTO employee (first_name, last_name, role_id)
VALUES("John", "Kim", 5);  -- Engineering manager (role #5)