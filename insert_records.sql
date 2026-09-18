INSERT INTO customers
(id, full_name, email, phone, shipping_address, city, postal_code, created_at)
VALUES
(1, 'Juan Dela Cruz', 'juan.delacruz@gmail.com', '09171234567', '123 Main Street', 'Dasmarinas', '4114', CURRENT_TIMESTAMP),
(2, 'Maria Santos', 'maria.santos@gmail.com', '09181234567', '45 Rizal Avenue', 'Imus', '4103', CURRENT_TIMESTAMP),
(3, 'Mark Reyes', 'mark.reyes@gmail.com', '09191234567', '78 Aguinaldo Highway', 'Bacoor', '4102', CURRENT_TIMESTAMP),
(4, 'Angela Garcia', 'angela.garcia@gmail.com', '09201234567', '21 Molino Boulevard', 'Bacoor', '4102', CURRENT_TIMESTAMP),
(5, 'Kevin Ramos', 'kevin.ramos@gmail.com', '09211234567', '56 Paliparan Road', 'Dasmarinas', '4114', CURRENT_TIMESTAMP);

INSERT INTO products
(id, name, description, category, brand, wear_type, material, fit, gender, base_price, status, created_at)
VALUES
(1, 'Oversized Graphic Tee', 'Black oversized graphic t-shirt', 'Tops', 'Urban Threads', 'tee', 'cotton', 'oversized', 'unisex', 450.00, 'active', CURRENT_TIMESTAMP),
(2, 'Classic Hoodie', 'Comfortable black pullover hoodie', 'Tops', 'Street Core', 'hoodie', 'fleece', 'oversized', 'unisex', 850.00, 'active', CURRENT_TIMESTAMP),
(3, 'Cargo Joggers', 'Casual cargo jogger pants', 'Bottoms', 'Urban Threads', 'joggers', 'cotton', 'regular', 'men', 750.00, 'active', CURRENT_TIMESTAMP),
(4, 'Denim Jacket', 'Classic blue denim jacket', 'Outerwear', 'Street Core', 'jacket', 'denim', 'regular', 'unisex', 1200.00, 'active', CURRENT_TIMESTAMP),
(5, 'Street Sneakers', 'Casual everyday sneakers', 'Footwear', 'Urban Kicks', 'footwear', 'polyester blend', 'regular', 'unisex', 1500.00, 'active', CURRENT_TIMESTAMP);

INSERT INTO product_variants
(id, product_id, sku, size, color, price, stock_quantity)
VALUES
(1, 1, 'OGT-BLK-M', 'M', 'Black', 450.00, 50),
(2, 2, 'HOD-BLK-L', 'L', 'Black', 850.00, 30),
(3, 3, 'CJ-BLK-M', 'M', 'Black', 750.00, 40),
(4, 4, 'DJ-BLU-L', 'L', 'Blue', 1200.00, 20),
(5, 5, 'SS-WHT-42', '42', 'White', 1500.00, 15);

INSERT INTO orders
(id, customer_id, status, subtotal, tax, shipping_fee, total, payment_method, payment_status, placed_at)
VALUES
(1, 1, 'pending', 450.00, 54.00, 50.00, 554.00, 'cod', 'pending', CURRENT_TIMESTAMP),
(2, 2, 'paid', 850.00, 102.00, 50.00, 1002.00, 'card', 'completed', CURRENT_TIMESTAMP),
(3, 3, 'fulfilled', 750.00, 90.00, 50.00, 890.00, 'cod', 'completed', CURRENT_TIMESTAMP),
(4, 4, 'shipped', 1200.00, 144.00, 50.00, 1394.00, 'paypal', 'completed', CURRENT_TIMESTAMP),
(5, 5, 'delivered', 1500.00, 180.00, 50.00, 1730.00, 'card', 'completed', CURRENT_TIMESTAMP);

INSERT INTO order_items
(id, order_id, variant_id, quantity, unit_price)
VALUES
(1, 1, 1, 1, 450.00),
(2, 2, 2, 1, 850.00),
(3, 3, 3, 1, 750.00),
(4, 4, 4, 1, 1200.00),
(5, 5, 5, 1, 1500.00);
