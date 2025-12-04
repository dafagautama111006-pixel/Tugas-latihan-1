CREATE DATABASE ecommerce_samsung;
USE ecommerce_samsung;

-- Tabel Products
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    description TEXT,
    stock INT NOT NULL
);

-- Tabel Users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Tabel Orders
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO products (name, price, description, stock)
VALUES ('Samsung Galaxy A54', 5499999, 'Mid-range populer dengan kamera stabil', 10);

SELECT * FROM products;
SELECT * FROM products WHERE id = 1;

UPDATE products
SET price = 4999999, stock = 15
WHERE id = 1;

DELETE FROM products
WHERE id = 1;
