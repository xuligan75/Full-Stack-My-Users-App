

CREATE TABLE IF NOT EXISTS users (
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    password TEXT,
    email TEXT
);

INSERT INTO users (first_name, last_name, age, password, email) VALUES
    ('John', 'Doe', 25, 'password123', 'john.doe@example.com'),
    ('Alice', 'Smith', 30, 'pass456', 'alice.smith@example.com');
