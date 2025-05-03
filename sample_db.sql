CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50)
);

INSERT INTO employees (name, position) VALUES ('Alice', 'Manager'), ('Bob', 'Developer');
