INSERT INTO employees (first_name, last_name, role_id, title, department_id, salary, manager) 
VALUES  ('John', 'Doe', 1, 'CEO', 1, 1000000, `John`),
        ('Jennifer', 'Smith', 2, 'CFO', 2, 1000000, `John`),
        ('Matt', 'Johnson', 3 'Manager', 3, 300000, `Jennifer`),
        ('Tim', 'Pillow', 3 'Manager', 3, 300000, `Jennifer`),
        ('Tiffany', 'Pearls', 4, 'General', 4, 40000, `Matt`),
        ('Don', 'Mustache', 4, 'General', 4, 40000, `Matt`),
        ('Lisa', 'Simpson', 4, 'General', 4, 40000, `Tim`),
        ('Sarah', 'Stanley', 4, 'General', 4, 40000, `Tim`),
        ('Paul', 'Whoknows', 5, 'Jainitor', 5, 35000, `Matt`);

INSERT INTO roles (title, salary, department_id)
VALUES  ('CEO', 1000000, 1),
        ('CFO', 1000000, 2),
        ('Manager', 300000, 3),
        ('General', 40000, 4),
        ('Janitor', 35000, 5);

INSERT INTO departments (name)
VALUES  ('Executive'),
        ('Finance'),
        ('Sales'),
        ('Marketing'),
        ('Janitorial');

