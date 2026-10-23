
-- Select database
USE ecommerce_db;

-- Create products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description VARCHAR(500),
    category  INT,
    price INT NOT NULL,
     prices INT NOT NULL,
    stock_quantity INT DEFAULT 0,
    sku  INT UNIQUE,
    is_available BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample products
INSERT INTO products (
    name,
    description,
    category,
    price,
    stock_quantity,
    sku
) VALUES
(
    'Wireless Mouse',
    'Wireless mouse with USB receiver',
    'Electronics',
    599.00,
    50,
    'ELEC001'
),
(
    'Mechanical Keyboard',
    'Mechanical keyboard for computers',
    'Electronics',
    2499.00,
    25,
    'ELEC002'
),
(
    'Cotton T-Shirt',
    'Comfortable cotton casual T-shirt',
    'Clothing',
    499.00,
    100,
    'CLTH001'
),
(
    'Travel Backpack',
    'Durable backpack for daily travel',
    'Accessories',
    1299.00,
    30,
    'ACCS001'
),
(
    'Water Bottle',
    'Reusable stainless steel bottle',
    'Home',
    349.00,
    75,
    'HOME001'
);

-- View all products
SELECT * FROM products;

-- Find products by category
SELECT *
FROM products
WHERE category = 'Electronics';

-- Find products below 1000
SELECT name, price
FROM products
WHERE price < 1000;

-- Update product price
UPDATE products
SET price = 649.00
WHERE product_id = 1;

-- Find products with low stock
SELECT name, stock_quantity
FROM products
WHERE stock_quantity < 20;

-- Count available products
SELECT COUNT(*) AS available_products
FROM products
WHERE is_available = TRUE;
