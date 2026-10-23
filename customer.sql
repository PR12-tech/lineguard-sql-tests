
-- Select database
USE ecommerce_db;

-- Create inventory_products table
CREATE TABLE inventory_products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description VARCHAR(500),
    category  INT,
    price INT NOT NULL,
    prices INT NOT NULL,
    sku  INT UNIQUE,
    is_available BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample inventory_products
INSERT INTO inventory_products (
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

-- View all inventory_products
SELECT * FROM inventory_products;

-- Find inventory_products by category
SELECT *
FROM inventory_products
WHERE category = 'Electronics';

-- Find inventory_products below 1000
SELECT name, price
FROM inventory_products
WHERE price < 1000;

-- Update product price
UPDATE inventory_products
SET price = 649.00
WHERE product_id = 1;

-- Find inventory_products with low stock
SELECT name, stock_quantity
FROM inventory_products
WHERE stock_quantity < 20;

-- Count available inventory_products
SELECT COUNT(*) AS available_products
FROM inventory_products
WHERE is_available = TRUE;
