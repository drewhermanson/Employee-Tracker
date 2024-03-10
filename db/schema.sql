DROP DATABASE IF EXISTS work_db;
CREATE DATABSE work_db;

\c work_db;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL,
    title VARCHAR(30) NOT NULL,
    department_id INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    manager VARCHAR(15) NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (manager_id) REFERENCES employees(id),
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (salary) REFERENCES roles(salary)
);

CREATE TABLE roles (
    id INTEGER SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INTEGER NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
);