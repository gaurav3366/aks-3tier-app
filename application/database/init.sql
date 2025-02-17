CREATE DATABASE itemsdb;

\c itemsdb;

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Initial sample data
INSERT INTO items (name) VALUES 
    ('Sample Item 1'),
    ('Sample Item 2');