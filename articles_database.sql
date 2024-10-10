
SELECT user, host FROM mysql.user;

CREATE USER 'root'@'127.0.0.1' IDENTIFIED BY 'vijvig123';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' WITH GRANT OPTION;

FLUSH PRIVILEGES;

-- Create the database

CREATE DATABASE my_database;


-- After creating the database, connect to it using your client (e.g., psql) or your application.
USE my_database;

-- Create the articles table
CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    title TEXT,
    content TEXT,
    published TIMESTAMP,
    link VARCHAR(255) UNIQUE,
    category TEXT
);

