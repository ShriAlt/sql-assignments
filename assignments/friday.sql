
-- Customer Table
CREATE TABLE Customer (
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    registered_date DATE,
    CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    shipping_address VARCHAR(255),
    shipping_city VARCHAR(50),
    shipping_state VARCHAR(50),
    shipping_postal_code VARCHAR(10),
    total_amount DECIMAL(10, 2),
    status VARCHAR(20),
    payment_method VARCHAR(50),
    CONSTRAINT pk_orders PRIMARY KEY (order_id),
    CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- OrderItems Table
CREATE TABLE OrderItems (
    item_id INT,
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    discount DECIMAL(5, 2),
    tax DECIMAL(5, 2),
    total_price DECIMAL(10, 2),
    notes TEXT,
    CONSTRAINT pk_order_items PRIMARY KEY (item_id),
    CONSTRAINT fk_order_items_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_order_items_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Products Table
CREATE TABLE Products (
    product_id INT,
    item_id INT,
    order_id INT,
    customer_id INT,
    product_name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    category VARCHAR(50),
    sku VARCHAR(50),
    CONSTRAINT pk_products PRIMARY KEY (product_id),
    CONSTRAINT fk_products_item FOREIGN KEY (item_id) REFERENCES OrderItems(item_id),
    CONSTRAINT fk_products_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_products_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Suppliers Table
CREATE TABLE Suppliers (
    supplier_id INT,
    product_id INT,
    item_id INT,
    order_id INT,
    customer_id INT,
    supplier_name VARCHAR(100),
    contact_name VARCHAR(100),
    contact_email VARCHAR(100),
    contact_phone VARCHAR(20),
    address VARCHAR(255),
    CONSTRAINT pk_suppliers PRIMARY KEY (supplier_id),
    CONSTRAINT fk_suppliers_product FOREIGN KEY (product_id) REFERENCES Products(product_id),
    CONSTRAINT fk_suppliers_item FOREIGN KEY (item_id) REFERENCES OrderItems(item_id),
    CONSTRAINT fk_suppliers_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_suppliers_customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Sample Inserts
-- 30 entries per table should be added below this section as needed

-- Insert Statements
INSERT INTO Customer VALUES (1, 'First1', 'Last1', 'customer1@example.com', '7384542721', 'Address 1', 'City1', 'State1', '56001', '2020-09-24');
INSERT INTO Customer VALUES (2, 'First2', 'Last2', 'customer2@example.com', '8144971710', 'Address 2', 'City2', 'State2', '56002', '2020-12-31');
INSERT INTO Customer VALUES (3, 'First3', 'Last3', 'customer3@example.com', '6656992325', 'Address 3', 'City3', 'State3', '56003', '2022-06-28');
INSERT INTO Customer VALUES (4, 'First4', 'Last4', 'customer4@example.com', '6926859521', 'Address 4', 'City4', 'State4', '56004', '2021-11-03');
INSERT INTO Customer VALUES (5, 'First5', 'Last5', 'customer5@example.com', '9964048594', 'Address 5', 'City5', 'State5', '56005', '2020-07-24');
INSERT INTO Customer VALUES (6, 'First6', 'Last6', 'customer6@example.com', '6260959035', 'Address 6', 'City6', 'State6', '56006', '2022-12-11');
INSERT INTO Customer VALUES (7, 'First7', 'Last7', 'customer7@example.com', '9849897551', 'Address 7', 'City7', 'State7', '56007', '2022-07-29');
INSERT INTO Customer VALUES (8, 'First8', 'Last8', 'customer8@example.com', '9052648223', 'Address 8', 'City8', 'State8', '56008', '2020-03-14');
INSERT INTO Customer VALUES (9, 'First9', 'Last9', 'customer9@example.com', '6740681799', 'Address 9', 'City9', 'State9', '56009', '2020-07-19');
INSERT INTO Customer VALUES (10, 'First10', 'Last10', 'customer10@example.com', '8389051807', 'Address 10', 'City10', 'State10', '560010', '2021-03-25');
INSERT INTO Customer VALUES (11, 'First11', 'Last11', 'customer11@example.com', '8993353826', 'Address 11', 'City11', 'State11', '560011', '2021-11-29');
INSERT INTO Customer VALUES (12, 'First12', 'Last12', 'customer12@example.com', '7840680804', 'Address 12', 'City12', 'State12', '560012', '2022-09-18');
INSERT INTO Customer VALUES (13, 'First13', 'Last13', 'customer13@example.com', '7337782162', 'Address 13', 'City13', 'State13', '560013', '2020-02-29');
INSERT INTO Customer VALUES (14, 'First14', 'Last14', 'customer14@example.com', '6208887394', 'Address 14', 'City14', 'State14', '560014', '2021-01-05');
INSERT INTO Customer VALUES (15, 'First15', 'Last15', 'customer15@example.com', '7845585063', 'Address 15', 'City15', 'State15', '560015', '2020-06-26');
INSERT INTO Customer VALUES (16, 'First16', 'Last16', 'customer16@example.com', '8288512346', 'Address 16', 'City16', 'State16', '560016', '2022-10-16');
INSERT INTO Customer VALUES (17, 'First17', 'Last17', 'customer17@example.com', '8092760076', 'Address 17', 'City17', 'State17', '560017', '2020-06-26');
INSERT INTO Customer VALUES (18, 'First18', 'Last18', 'customer18@example.com', '6165837035', 'Address 18', 'City18', 'State18', '560018', '2022-03-09');
INSERT INTO Customer VALUES (19, 'First19', 'Last19', 'customer19@example.com', '8072900547', 'Address 19', 'City19', 'State19', '560019', '2020-10-24');
INSERT INTO Customer VALUES (20, 'First20', 'Last20', 'customer20@example.com', '7464001269', 'Address 20', 'City20', 'State20', '560020', '2021-10-18');
INSERT INTO Customer VALUES (21, 'First21', 'Last21', 'customer21@example.com', '7183325128', 'Address 21', 'City21', 'State21', '560021', '2020-02-19');
INSERT INTO Customer VALUES (22, 'First22', 'Last22', 'customer22@example.com', '8724609036', 'Address 22', 'City22', 'State22', '560022', '2020-04-14');
INSERT INTO Customer VALUES (23, 'First23', 'Last23', 'customer23@example.com', '6302046355', 'Address 23', 'City23', 'State23', '560023', '2020-05-17');
INSERT INTO Customer VALUES (24, 'First24', 'Last24', 'customer24@example.com', '6166899975', 'Address 24', 'City24', 'State24', '560024', '2021-05-31');
INSERT INTO Customer VALUES (25, 'First25', 'Last25', 'customer25@example.com', '6407230793', 'Address 25', 'City25', 'State25', '560025', '2021-03-30');
INSERT INTO Customer VALUES (26, 'First26', 'Last26', 'customer26@example.com', '7177631905', 'Address 26', 'City26', 'State26', '560026', '2020-04-23');
INSERT INTO Customer VALUES (27, 'First27', 'Last27', 'customer27@example.com', '6113378633', 'Address 27', 'City27', 'State27', '560027', '2022-07-10');
INSERT INTO Customer VALUES (28, 'First28', 'Last28', 'customer28@example.com', '7981228382', 'Address 28', 'City28', 'State28', '560028', '2020-10-23');
INSERT INTO Customer VALUES (29, 'First29', 'Last29', 'customer29@example.com', '8364807569', 'Address 29', 'City29', 'State29', '560029', '2021-03-25');
INSERT INTO Customer VALUES (30, 'First30', 'Last30', 'customer30@example.com', '8172687347', 'Address 30', 'City30', 'State30', '560030', '2020-12-15');
INSERT INTO Orders VALUES (1, 23, '2021-03-18', 'Shipping Addr 1', 'ShipCity1', 'ShipState1', '56001', 912.67, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (2, 21, '2023-03-15', 'Shipping Addr 2', 'ShipCity2', 'ShipState2', '56002', 630.60, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (3, 14, '2022-08-01', 'Shipping Addr 3', 'ShipCity3', 'ShipState3', '56003', 839.41, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (4, 23, '2021-02-14', 'Shipping Addr 4', 'ShipCity4', 'ShipState4', '56004', 622.16, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (5, 26, '2021-12-07', 'Shipping Addr 5', 'ShipCity5', 'ShipState5', '56005', 177.25, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (6, 6, '2022-08-30', 'Shipping Addr 6', 'ShipCity6', 'ShipState6', '56006', 456.82, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (7, 23, '2021-01-27', 'Shipping Addr 7', 'ShipCity7', 'ShipState7', '56007', 768.45, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (8, 29, '2022-02-14', 'Shipping Addr 8', 'ShipCity8', 'ShipState8', '56008', 508.41, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (9, 27, '2021-02-05', 'Shipping Addr 9', 'ShipCity9', 'ShipState9', '56009', 324.92, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (10, 29, '2021-01-18', 'Shipping Addr 10', 'ShipCity10', 'ShipState10', '560010', 138.76, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (11, 9, '2022-07-14', 'Shipping Addr 11', 'ShipCity11', 'ShipState11', '560011', 225.74, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (12, 1, '2023-07-23', 'Shipping Addr 12', 'ShipCity12', 'ShipState12', '560012', 941.91, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (13, 22, '2021-08-24', 'Shipping Addr 13', 'ShipCity13', 'ShipState13', '560013', 468.05, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (14, 19, '2021-03-19', 'Shipping Addr 14', 'ShipCity14', 'ShipState14', '560014', 469.93, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (15, 26, '2021-09-29', 'Shipping Addr 15', 'ShipCity15', 'ShipState15', '560015', 334.02, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (16, 26, '2022-12-20', 'Shipping Addr 16', 'ShipCity16', 'ShipState16', '560016', 127.25, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (17, 30, '2021-01-02', 'Shipping Addr 17', 'ShipCity17', 'ShipState17', '560017', 489.97, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (18, 1, '2021-08-28', 'Shipping Addr 18', 'ShipCity18', 'ShipState18', '560018', 488.16, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (19, 18, '2021-09-17', 'Shipping Addr 19', 'ShipCity19', 'ShipState19', '560019', 637.42, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (20, 19, '2021-03-12', 'Shipping Addr 20', 'ShipCity20', 'ShipState20', '560020', 917.54, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (21, 27, '2021-07-15', 'Shipping Addr 21', 'ShipCity21', 'ShipState21', '560021', 371.38, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (22, 15, '2021-05-26', 'Shipping Addr 22', 'ShipCity22', 'ShipState22', '560022', 995.13, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (23, 14, '2022-02-09', 'Shipping Addr 23', 'ShipCity23', 'ShipState23', '560023', 242.90, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (24, 18, '2021-11-20', 'Shipping Addr 24', 'ShipCity24', 'ShipState24', '560024', 249.00, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (25, 6, '2022-08-19', 'Shipping Addr 25', 'ShipCity25', 'ShipState25', '560025', 996.11, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (26, 2, '2022-09-01', 'Shipping Addr 26', 'ShipCity26', 'ShipState26', '560026', 963.52, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (27, 6, '2021-02-10', 'Shipping Addr 27', 'ShipCity27', 'ShipState27', '560027', 509.63, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (28, 7, '2022-03-22', 'Shipping Addr 28', 'ShipCity28', 'ShipState28', '560028', 382.54, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (29, 4, '2023-06-04', 'Shipping Addr 29', 'ShipCity29', 'ShipState29', '560029', 581.88, 'Shipped', 'Credit Card');
INSERT INTO Orders VALUES (30, 19, '2021-09-11', 'Shipping Addr 30', 'ShipCity30', 'ShipState30', '560030', 393.89, 'Shipped', 'Credit Card');
INSERT INTO OrderItems VALUES (1, 9, 24, 1, 3, 14.27, 1.75, 4.11, 380.88, 'Note 1');
INSERT INTO OrderItems VALUES (2, 8, 13, 2, 1, 98.95, 3.12, 7.38, 183.01, 'Note 2');
INSERT INTO OrderItems VALUES (3, 6, 22, 3, 5, 87.60, 0.31, 2.29, 493.82, 'Note 3');
INSERT INTO OrderItems VALUES (4, 23, 5, 4, 3, 29.41, 4.86, 9.08, 216.53, 'Note 4');
INSERT INTO OrderItems VALUES (5, 15, 11, 5, 1, 46.37, 7.39, 2.20, 240.84, 'Note 5');
INSERT INTO OrderItems VALUES (6, 2, 21, 6, 2, 90.04, 3.57, 3.69, 398.51, 'Note 6');
INSERT INTO OrderItems VALUES (7, 19, 27, 7, 4, 74.50, 6.74, 3.91, 468.56, 'Note 7');
INSERT INTO OrderItems VALUES (8, 12, 13, 8, 5, 65.75, 0.33, 5.08, 483.99, 'Note 8');
INSERT INTO OrderItems VALUES (9, 7, 1, 9, 3, 79.29, 7.95, 6.00, 348.15, 'Note 9');
INSERT INTO OrderItems VALUES (10, 19, 11, 10, 4, 10.41, 9.91, 2.67, 217.45, 'Note 10');
INSERT INTO OrderItems VALUES (11, 5, 29, 11, 2, 29.45, 0.38, 7.27, 388.24, 'Note 11');
INSERT INTO OrderItems VALUES (12, 25, 25, 12, 4, 16.37, 2.90, 8.97, 173.19, 'Note 12');
INSERT INTO OrderItems VALUES (13, 18, 18, 13, 4, 80.64, 0.98, 9.21, 115.36, 'Note 13');
INSERT INTO OrderItems VALUES (14, 29, 27, 14, 1, 16.85, 5.22, 9.25, 398.72, 'Note 14');
INSERT INTO OrderItems VALUES (15, 11, 23, 15, 3, 47.72, 4.32, 8.56, 29.83, 'Note 15');
INSERT INTO OrderItems VALUES (16, 15, 22, 16, 2, 64.63, 5.03, 7.21, 416.55, 'Note 16');
INSERT INTO OrderItems VALUES (17, 10, 20, 17, 4, 27.79, 5.24, 2.70, 94.47, 'Note 17');
INSERT INTO OrderItems VALUES (18, 18, 2, 18, 3, 22.83, 6.72, 3.16, 358.14, 'Note 18');
INSERT INTO OrderItems VALUES (19, 27, 25, 19, 2, 71.55, 3.28, 8.12, 467.43, 'Note 19');
INSERT INTO OrderItems VALUES (20, 4, 2, 20, 2, 33.68, 6.68, 9.82, 169.78, 'Note 20');
INSERT INTO OrderItems VALUES (21, 8, 10, 21, 5, 35.42, 6.46, 6.96, 439.90, 'Note 21');
INSERT INTO OrderItems VALUES (22, 14, 7, 22, 5, 49.57, 0.97, 1.56, 299.37, 'Note 22');
INSERT INTO OrderItems VALUES (23, 6, 16, 23, 1, 73.36, 4.59, 7.48, 30.01, 'Note 23');
INSERT INTO OrderItems VALUES (24, 29, 25, 24, 5, 70.48, 3.34, 4.03, 483.39, 'Note 24');
INSERT INTO OrderItems VALUES (25, 9, 27, 25, 2, 33.69, 3.11, 1.21, 497.69, 'Note 25');
INSERT INTO OrderItems VALUES (26, 23, 13, 26, 1, 96.96, 2.89, 2.84, 164.35, 'Note 26');
INSERT INTO OrderItems VALUES (27, 25, 6, 27, 5, 30.43, 1.93, 2.43, 400.57, 'Note 27');
INSERT INTO OrderItems VALUES (28, 18, 28, 28, 3, 54.64, 9.79, 8.36, 165.59, 'Note 28');
INSERT INTO OrderItems VALUES (29, 1, 29, 29, 4, 96.52, 7.56, 2.42, 267.91, 'Note 29');
INSERT INTO OrderItems VALUES (30, 10, 1, 30, 3, 21.02, 3.57, 6.99, 127.57, 'Note 30');
INSERT INTO Products VALUES (1, 1, 19, 6, 'Product1', 'Desc1', 126.16, 15, 'Category1', 'SKU1');
INSERT INTO Products VALUES (2, 2, 13, 3, 'Product2', 'Desc2', 59.22, 202, 'Category2', 'SKU2');
INSERT INTO Products VALUES (3, 3, 14, 24, 'Product3', 'Desc3', 126.83, 101, 'Category3', 'SKU3');
INSERT INTO Products VALUES (4, 4, 19, 11, 'Product4', 'Desc4', 146.01, 454, 'Category4', 'SKU4');
INSERT INTO Products VALUES (5, 5, 7, 21, 'Product5', 'Desc5', 170.94, 122, 'Category5', 'SKU5');
INSERT INTO Products VALUES (6, 6, 2, 24, 'Product6', 'Desc6', 81.09, 439, 'Category6', 'SKU6');
INSERT INTO Products VALUES (7, 7, 28, 21, 'Product7', 'Desc7', 180.07, 323, 'Category7', 'SKU7');
INSERT INTO Products VALUES (8, 8, 25, 19, 'Product8', 'Desc8', 60.71, 368, 'Category8', 'SKU8');
INSERT INTO Products VALUES (9, 9, 10, 13, 'Product9', 'Desc9', 115.31, 446, 'Category9', 'SKU9');
INSERT INTO Products VALUES (10, 10, 6, 20, 'Product10', 'Desc10', 94.07, 277, 'Category10', 'SKU10');
INSERT INTO Products VALUES (11, 11, 20, 24, 'Product11', 'Desc11', 104.65, 35, 'Category11', 'SKU11');
INSERT INTO Products VALUES (12, 12, 8, 9, 'Product12', 'Desc12', 107.16, 199, 'Category12', 'SKU12');
INSERT INTO Products VALUES (13, 13, 10, 27, 'Product13', 'Desc13', 99.75, 134, 'Category13', 'SKU13');
INSERT INTO Products VALUES (14, 14, 5, 8, 'Product14', 'Desc14', 74.37, 121, 'Category14', 'SKU14');
INSERT INTO Products VALUES (15, 15, 27, 27, 'Product15', 'Desc15', 196.64, 78, 'Category15', 'SKU15');
INSERT INTO Products VALUES (16, 16, 11, 24, 'Product16', 'Desc16', 55.64, 443, 'Category16', 'SKU16');
INSERT INTO Products VALUES (17, 17, 5, 28, 'Product17', 'Desc17', 74.90, 392, 'Category17', 'SKU17');
INSERT INTO Products VALUES (18, 18, 6, 17, 'Product18', 'Desc18', 190.15, 288, 'Category18', 'SKU18');
INSERT INTO Products VALUES (19, 19, 15, 30, 'Product19', 'Desc19', 195.75, 460, 'Category19', 'SKU19');
INSERT INTO Products VALUES (20, 20, 13, 30, 'Product20', 'Desc20', 135.70, 295, 'Category20', 'SKU20');
INSERT INTO Products VALUES (21, 21, 6, 28, 'Product21', 'Desc21', 168.35, 206, 'Category21', 'SKU21');
INSERT INTO Products VALUES (22, 22, 21, 12, 'Product22', 'Desc22', 105.90, 50, 'Category22', 'SKU22');
INSERT INTO Products VALUES (23, 23, 27, 7, 'Product23', 'Desc23', 191.18, 69, 'Category23', 'SKU23');
INSERT INTO Products VALUES (24, 24, 29, 13, 'Product24', 'Desc24', 176.01, 114, 'Category24', 'SKU24');
INSERT INTO Products VALUES (25, 25, 26, 8, 'Product25', 'Desc25', 117.96, 424, 'Category25', 'SKU25');
INSERT INTO Products VALUES (26, 26, 30, 6, 'Product26', 'Desc26', 136.16, 442, 'Category26', 'SKU26');
INSERT INTO Products VALUES (27, 27, 16, 7, 'Product27', 'Desc27', 158.33, 271, 'Category27', 'SKU27');
INSERT INTO Products VALUES (28, 28, 9, 24, 'Product28', 'Desc28', 96.09, 296, 'Category28', 'SKU28');
INSERT INTO Products VALUES (29, 29, 9, 18, 'Product29', 'Desc29', 75.60, 243, 'Category29', 'SKU29');
INSERT INTO Products VALUES (30, 30, 23, 12, 'Product30', 'Desc30', 119.31, 219, 'Category30', 'SKU30');
INSERT INTO Suppliers VALUES (1, 1, 1, 13, 16, 'Supplier1', 'Contact1', 'supplier1@example.com', '7811228121', 'Supplier Address 1');
INSERT INTO Suppliers VALUES (2, 2, 2, 14, 23, 'Supplier2', 'Contact2', 'supplier2@example.com', '8498536001', 'Supplier Address 2');
INSERT INTO Suppliers VALUES (3, 3, 3, 19, 6, 'Supplier3', 'Contact3', 'supplier3@example.com', '7861086962', 'Supplier Address 3');
INSERT INTO Suppliers VALUES (4, 4, 4, 19, 16, 'Supplier4', 'Contact4', 'supplier4@example.com', '9309975343', 'Supplier Address 4');
INSERT INTO Suppliers VALUES (5, 5, 5, 28, 12, 'Supplier5', 'Contact5', 'supplier5@example.com', '6457070187', 'Supplier Address 5');
INSERT INTO Suppliers VALUES (6, 6, 6, 8, 12, 'Supplier6', 'Contact6', 'supplier6@example.com', '8062457950', 'Supplier Address 6');
INSERT INTO Suppliers VALUES (7, 7, 7, 25, 16, 'Supplier7', 'Contact7', 'supplier7@example.com', '9458692136', 'Supplier Address 7');
INSERT INTO Suppliers VALUES (8, 8, 8, 4, 27, 'Supplier8', 'Contact8', 'supplier8@example.com', '8194676529', 'Supplier Address 8');
INSERT INTO Suppliers VALUES (9, 9, 9, 24, 15, 'Supplier9', 'Contact9', 'supplier9@example.com', '9238608374', 'Supplier Address 9');
INSERT INTO Suppliers VALUES (10, 10, 10, 12, 8, 'Supplier10', 'Contact10', 'supplier10@example.com', '6832736644', 'Supplier Address 10');
INSERT INTO Suppliers VALUES (11, 11, 11, 22, 5, 'Supplier11', 'Contact11', 'supplier11@example.com', '6382091259', 'Supplier Address 11');
INSERT INTO Suppliers VALUES (12, 12, 12, 14, 24, 'Supplier12', 'Contact12', 'supplier12@example.com', '9822513243', 'Supplier Address 12');
INSERT INTO Suppliers VALUES (13, 13, 13, 30, 7, 'Supplier13', 'Contact13', 'supplier13@example.com', '7402522056', 'Supplier Address 13');
INSERT INTO Suppliers VALUES (14, 14, 14, 28, 3, 'Supplier14', 'Contact14', 'supplier14@example.com', '6916262041', 'Supplier Address 14');
INSERT INTO Suppliers VALUES (15, 15, 15, 22, 15, 'Supplier15', 'Contact15', 'supplier15@example.com', '8135919587', 'Supplier Address 15');
INSERT INTO Suppliers VALUES (16, 16, 16, 2, 29, 'Supplier16', 'Contact16', 'supplier16@example.com', '8099692411', 'Supplier Address 16');
INSERT INTO Suppliers VALUES (17, 17, 17, 25, 25, 'Supplier17', 'Contact17', 'supplier17@example.com', '6535943016', 'Supplier Address 17');
INSERT INTO Suppliers VALUES (18, 18, 18, 1, 20, 'Supplier18', 'Contact18', 'supplier18@example.com', '8768597618', 'Supplier Address 18');
INSERT INTO Suppliers VALUES (19, 19, 19, 2, 15, 'Supplier19', 'Contact19', 'supplier19@example.com', '6058805280', 'Supplier Address 19');
INSERT INTO Suppliers VALUES (20, 20, 20, 6, 20, 'Supplier20', 'Contact20', 'supplier20@example.com', '8825983988', 'Supplier Address 20');
INSERT INTO Suppliers VALUES (21, 21, 21, 6, 7, 'Supplier21', 'Contact21', 'supplier21@example.com', '7718804385', 'Supplier Address 21');
INSERT INTO Suppliers VALUES (22, 22, 22, 23, 8, 'Supplier22', 'Contact22', 'supplier22@example.com', '9582722777', 'Supplier Address 22');
INSERT INTO Suppliers VALUES (23, 23, 23, 3, 14, 'Supplier23', 'Contact23', 'supplier23@example.com', '9200502024', 'Supplier Address 23');
INSERT INTO Suppliers VALUES (24, 24, 24, 28, 9, 'Supplier24', 'Contact24', 'supplier24@example.com', '8020694414', 'Supplier Address 24');
INSERT INTO Suppliers VALUES (25, 25, 25, 14, 25, 'Supplier25', 'Contact25', 'supplier25@example.com', '7037344845', 'Supplier Address 25');
INSERT INTO Suppliers VALUES (26, 26, 26, 1, 10, 'Supplier26', 'Contact26', 'supplier26@example.com', '9075641184', 'Supplier Address 26');
INSERT INTO Suppliers VALUES (27, 27, 27, 27, 21, 'Supplier27', 'Contact27', 'supplier27@example.com', '7723320261', 'Supplier Address 27');
INSERT INTO Suppliers VALUES (28, 28, 28, 25, 27, 'Supplier28', 'Contact28', 'supplier28@example.com', '7728301057', 'Supplier Address 28');
INSERT INTO Suppliers VALUES (29, 29, 29, 2, 19, 'Supplier29', 'Contact29', 'supplier29@example.com', '6711481126', 'Supplier Address 29');
INSERT INTO Suppliers VALUES (30, 30, 30, 8, 29, 'Supplier30', 'Contact30', 'supplier30@example.com', '9264610719', 'Supplier Address 30');