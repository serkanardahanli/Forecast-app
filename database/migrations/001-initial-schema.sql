CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    role VARCHAR(50)
);

CREATE TABLE financial_entries (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    date DATE NOT NULL,
    category VARCHAR(100),
    amount DECIMAL(10,2) NOT NULL,
    type VARCHAR(50),
    description TEXT
);

CREATE TABLE budgets (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    year INTEGER,
    month INTEGER,
    category VARCHAR(100),
    planned_amount DECIMAL(10,2),
    actual_amount DECIMAL(10,2)
);
