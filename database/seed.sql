-- Products seed data for CloudCart
-- Run against product_db

INSERT INTO products (name, description, category, price, stock, image_url, created_at, updated_at) VALUES
-- Electronics
('MacBook Pro 16"', 'Apple M3 Pro chip, 18GB RAM, 512GB SSD', 'Electronics', 199999.00, 25, 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400', NOW(), NOW()),
('Sony WH-1000XM5', 'Industry-leading noise cancelling wireless headphones', 'Electronics', 27999.00, 80, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400', NOW(), NOW()),
('Samsung 4K QLED TV 55"', 'Quantum dot technology, 120Hz refresh rate', 'Electronics', 71999.00, 15, 'https://images.unsplash.com/photo-1593784991095-a205069470b6?w=400', NOW(), NOW()),
('iPhone 15 Pro', '256GB, Titanium frame, A17 Pro chip', 'Electronics', 95999.00, 40, 'https://images.unsplash.com/photo-1678685888221-cda773a3dcdb?w=400', NOW(), NOW()),
('iPad Air M2', '11-inch Liquid Retina, 256GB Wi-Fi', 'Electronics', 59999.00, 35, 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400', NOW(), NOW()),

-- Fashion
('Premium Denim Jacket', 'Classic fit, 100% cotton denim', 'Fashion', 7199.00, 120, 'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=400', NOW(), NOW()),
('Merino Wool Sweater', 'Lightweight, itch-free merino wool blend', 'Fashion', 10399.00, 75, 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400', NOW(), NOW()),
('Slim Fit Chinos', 'Stretch comfort, wrinkle-resistant fabric', 'Fashion', 4799.00, 200, 'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?w=400', NOW(), NOW()),
('Classic White Shirt', 'Egyptian cotton, button-down collar', 'Fashion', 3999.00, 150, 'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=400', NOW(), NOW()),

-- Shoes
('Nike Air Max 270', 'Lifestyle shoes with large Max Air unit', 'Shoes', 12000.00, 90, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400', NOW(), NOW()),
('Adidas Ultraboost 23', 'Running shoe with responsive Boost cushioning', 'Shoes', 14400.00, 60, 'https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=400', NOW(), NOW()),
('Leather Oxford Shoes', 'Genuine calfskin leather, Goodyear welted sole', 'Shoes', 17600.00, 45, 'https://images.unsplash.com/photo-1531310197839-ccf54634509e?w=400', NOW(), NOW()),

-- Watches
('Apple Watch Series 9', '45mm GPS + Cellular, Midnight Aluminum', 'Watches', 39999.00, 50, 'https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=400', NOW(), NOW()),
('Seiko Prospex Diver', 'Automatic movement, 200m water resistance', 'Watches', 36000.00, 30, 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400', NOW(), NOW()),
('Citizen Eco-Drive', 'Solar-powered, perpetual calendar', 'Watches', 23999.00, 40, 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?w=400', NOW(), NOW()),

-- Home
('Dyson V15 Detect', 'Laser dust detection, up to 60 min runtime', 'Home', 59999.00, 25, 'https://images.unsplash.com/photo-1558317374-067fb5f30001?w=400', NOW(), NOW()),
('Philips Hue Starter Kit', '4 smart bulbs + bridge, 16M colors', 'Home', 15999.00, 60, 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400', NOW(), NOW()),
('Nespresso Vertuo Next', 'Coffee and espresso machine, 5 cup sizes', 'Home', 14399.00, 45, 'https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=400', NOW(), NOW()),

-- Books
('Clean Code', 'A Handbook of Agile Software Craftsmanship by Robert C. Martin', 'Books', 2879.00, 300, 'https://images.unsplash.com/photo-1589998059171-988d887df646?w=400', NOW(), NOW()),
('The Pragmatic Programmer', '20th Anniversary Edition — Your Journey to Mastery', 'Books', 3999.00, 250, 'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=400', NOW(), NOW()),
('Designing Data-Intensive Applications', 'The Big Ideas Behind Reliable, Scalable, and Maintainable Systems', 'Books', 4799.00, 200, 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400', NOW(), NOW()),
('Kubernetes in Action', 'Second Edition — Deploy and manage containers at scale', 'Books', 4399.00, 175, 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400', NOW(), NOW());
