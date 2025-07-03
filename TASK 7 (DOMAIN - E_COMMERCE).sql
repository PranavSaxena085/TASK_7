USE internship_task

CREATE TABLE E_COMMERCE_TASK_7 (
   Product_ID INT PRIMARY KEY AUTO_INCREMENT,
   Product_Name VARCHAR(100),
   Category VARCHAR(100),
   Price DECIMAL(10,2),
   Stock INT,
   Description TEXT,
   Added_date DATE,
   is_available BOOLEAN DEFAULT TRUE,
   Supplier_Name Varchar(100)
)

INSERT INTO e_commerce_task_7 (Product_Name, Category, Price, Stock, Description, Added_date, is_available, Supplier_Name)
VALUES 
('Wireless Mouse', 'Electronics', 599.00, 40, 'Smooth performance with USB receiver.', '2025-01-10', TRUE, 'TechZone Pvt Ltd'),

('Cotton T-Shirt', 'Apparel', 399.00, 100, '100% cotton, available in 5 colors.', '2025-02-05', TRUE, 'ClothMart'),

('Electric Kettle', 'Home Appliances', 1299.00, 15, '1.5L, auto shut-off feature.', '2025-01-20', TRUE, 'KitchenWorld'),

('Bluetooth Speaker', 'Electronics', 1799.00, 0, NULL, '2025-02-18', FALSE, 'SoundMaster'),

('Yoga Mat', 'Fitness', 749.00, 25, 'Anti-slip surface with extra padding.', '2025-01-30', TRUE, NULL),

('Office Chair', 'Furniture', 4999.00, 5, 'Ergonomic chair with lumbar support.', '2024-12-15', TRUE, 'ErgoFurniture Ltd'),

('Mobile Charger', 'Accessories', 299.00, 50, NULL, '2025-03-05', TRUE, 'ChargeIT'),

('Laptop Stand', 'Accessories', 999.00, 20, 'Aluminium body, foldable design.', '2025-02-25', TRUE, 'ProGear'),

('Notebook Set', 'Stationery', 199.00, 200, 'Pack of 5 notebooks, A5 size.', '2025-01-05', TRUE, 'PaperPlus'),

('LED Table Lamp', 'Home Decor', 1599.00, 10, 'Touch sensor with 3 brightness levels.', '2024-11-28', TRUE, 'LightHouse Pvt Ltd');

ALTER TABLE e_commerce_task_7
CHANGE Stock Quantity INT;

SELECT * FROM e_commerce_task_7

-- Use views for abstraction and security

CREATE VIEW Expensive_Products AS
SELECT Product_Name, Price, Category
FROM e_commerce_task_6
WHERE Price > 1000;

CREATE VIEW Low_Stock_Products AS
SELECT Product_Name, Quantity
FROM e_commerce_task_7
WHERE Quantity < 20;

CREATE VIEW Product_List AS
SELECT Product_Name, Category
FROM e_commerce_task_7;

CREATE VIEW Available_Products_With_Supplier AS
SELECT Product_Name, Supplier_Name
FROM e_commerce_task_7
WHERE is_available = TRUE AND Supplier_Name IS NOT NULL;

SELECT * FROM Expensive_Products;

SELECT * FROM Low_Stock_Products;

DROP VIEW Available_Products_With_Supplier



