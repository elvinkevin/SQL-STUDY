-- Jumia Database Seed Script
--populates the country table with countries
insert into country(location) values
('Kenya'),
('Nigeria'),
('Egypt'),
('South Africa'),
('Ghana'),
('Morocco'),
('Ethiopia'),
('Algeria'),
('Uganda'),
('Tanzania'),
('Cameroon'),
('Ivory Coast'),
('Senegal'),
('Angola'),
('Sudan'),
('Libya'),
('Zimbabwe'),
('Mozambique'),
('Zambia'),
('Namibia');

--populates the stores table with store locations
insert into stores(country_id, location) values
(1, 'Nairobi'),
(2, 'Lagos'),
(3, 'Cairo'),
(4, 'Johannesburg'),
(5, 'Accra'),
(6, 'Casablanca'),
(7, 'Addis Ababa'),
(8, 'Algiers'),
(9, 'Kampala'),
(10, 'Dar es Salaam'),
(11, 'Yaoundé'),
(12, 'Abidjan'),
(13, 'Dakar'),
(14, 'Luanda'),
(15, 'Khartoum'),
(16, 'Tripoli'),
(17, 'Harare'),
(18, 'Maputo'),
(19, 'Lusaka'),
(20, 'Windhoek');

--populates the branches table with branch locations
insert into jumia_branches(store_id, branch_name, adress) values
(1, 'Nairobi Branch', ' Nairobi St'),
(2, 'Lagos Branch', ' Lagos Ave'),
(3, 'Cairo Branch', ' Cairo Rd'),
(4, 'Johannesburg Branch', ' Johannesburg Blvd'),
(5, 'Accra Branch', 'Accra Ln'),
(6, 'Casablanca Branch',' Casablanca Dr'),
(7, 'Addis Ababa Branch','Addis Ababa St'),
(8, 'Algiers Branch','Algiers Ave'),
(9, 'Kampala Branch', ' Kampala Rd'),
(10, 'Dar es Salaam Branch', 'Dar es Salaam Blvd'),
(11, 'Yaoundé Branch',' Yaoundé Ln'),
(12, 'Abidjan Branch',' Abidjan Dr'),
(13, 'Dakar Branch','357 Dakar St'),
(14, 'Luanda Branch', 'Luanda Ave'),
(15, 'Khartoum Branch','Khartoum Rd'),
(16, 'Tripoli Branch', 'Tripoli Blvd'),
(17, 'Harare Branch', 'Harare Ln'),
(18, 'Maputo Branch', 'Maputo Dr'),
(19, 'Lusaka Branch','Lusaka St'),
(20, 'Windhoek Branch','1 Windhoek Ave');

--populates the departments table with department names and their corresponding branch ids
insert into departments(dept_name) values
('Marketing and advertising'),
('sales'),
('finance and accounting'),
('Human resources'),
('information technology'),
('administration'),
('customer service');

--populates the employees table with employee details and their corresponding department ids
insert into employees(dept_id, emp_name, role, salary, contacts, national_id) values
(1, 'alice wamaitha', 'Marketing Manager', 75000.00, '254788123456', 'ID123456789'),
(2, 'kevin gichuru', 'Sales Executive', 60000.00, '254788987654', 'ID987654321'),
(3, 'charlie kirira', 'Finance Analyst', 65000.00, '254788111222', 'ID111222333'),
(4, 'diana marua', 'HR Specialist', 55000.00, '254788333444', 'ID333444555'),
(5, 'edward gura', 'IT Support', 50000.00, '254788555666', 'ID98765321'),
(6, 'fiona makena', 'Admin Assistant', 45000.00, '254788777888', 'ID112233445'),
(7, 'george thompson', 'Customer Service Rep', 40000.00, '254788999000', 'ID556677889');

--populates the accounts table with account details and their corresponding account types
insert into accounts(email, username, password_hash) values
('alice.wamaitha@jumia.com', 'alice_wamaitha', 'xyz&9$3@*^'),
('kevin.gichuru@jumia.com', 'kevin_gichuru', '$%&%&*&9$3@*^)'),
('charlie.kirira@jumia.com', 'charlie_kirira', 'xyzjeu-^&$+(+)'),
('diana.marua@jumia.com', 'diana_marua', 'xhy&*%^$$#!@#+'),
('edward.gura@jumia.com', 'edward_gura', 'x(%^*$^&+>M?no'),
('fiona.makena@jumia.com', 'fiona_makena', 'x":}+&&^&%'),
('george.thompson@jumia.com', 'george_thompson', 'y*&^%%^$^(?")'),
('makena@jumia.com', 'makena', '*&*^__**)+'),
('jaym@jumia.com', 'jaym', '+(&^^%$@":<>)'),
('sheila@jumia.com', 'sheila', '#!&**^%$<>'),
('james@jumia.com', 'james', '$#*($$#&^%'),
('lucy@jumia.com', 'lucy', 's"""+'),
('david@jumia.com', 'david', 'G_(^&*)JUT^R^*(^)');

--populates the customers table with customer details and their corresponding account ids
insert into customers(acc_id, cust_name, contacts, national_id) values
(1, 'Alice Wamaitha', '254788123456', 'ID123456789'),
(2, 'Kevin Gichuru', '254788987654', 'ID987654321'),
(3, 'Charlie Kirira', '254788111222', 'ID111222333'),
(4, 'Diana Marua', '254788333444', 'ID333444555'),
(5, 'Edward Gura', '254788555666', 'ID98765321'),
(6, 'Fiona Makena', '254788777888', 'ID112233445'),
(7, 'George Thompson', '254788999000', 'ID556677889'),


--populates the vendors table with vendor details and their corresponding account ids
insert into vendors(acc_id, vendor_name, contacts, national_id) values
(8, 'Makena', '254788777888', 'ID112233445'),
(9, 'Jaym', '254788123456', 'ID123456789'),
(10, 'Sheila', '254788987654', 'ID987654321'),
(11, 'James', '254788111222', 'ID111222333'),
(12, 'Lucy', '254788333444', 'ID333444555'),  
(13, 'David', '254788555666', 'ID98765321');

--populates the product_categories table with category names
    insert into product_categories(category_name) values
    ('Electronics'),
    ('Fashion'),
    ('Home and Living'),
    ('Health and Beauty'),
    ('Sports and Outdoors'),
    ('Toys and Games'),
    ('Automotive'),
    ('Books and Media'),
    ('Groceries'),
    ('Baby Products');

--populates the products table with product details and their corresponding category ids
    insert into products(category_id, product_name, price) values
    (1, 'Smartphone', 699.99),
    (2, 'Jeans', 49.99),
    (3, 'Sofa', 899.99),
    (4, 'Skincare Set', 79.99),
    (5, 'Tennis Racket', 199.99),
    (6, 'Board Game', 29.99),
    (7, 'Car Battery', 149.99),
    (8, 'Novel Book', 19.99),
    (9, 'Organic Coffee', 14.99),
    (10, 'Baby Stroller', 299.99),
    (1, 'Laptop', 999.99),
    (2, 'Dress', 89.99),
    (4, 'Makeup Kit', 59.99),
    (5, 'Yoga Mat', 39.99),
    (7, 'Car Tires', 399.99),
    (8, 'Cookbook', 24.99),
    (9, 'Organic Tea', 9.99),
    (10, 'Baby Monitor', 149.99);

--populatees the vendor_listings table with listing details and their corresponding vendor and product ids
    insert into vendor_listings(vendor_id, product_id, stock_quantity, price) values
        (11, 5, 30, 199.99),
        (12, 6, 150, 29.99),
        (7, 7, 40, 149.99),
        (11, 8, 100, 21.99),
        (9, 8, 200, 19.99),
        (10, 9, 300, 14.99),
        (8, 10, 25, 299.99),
        (12, 1, 50, 799.99),
        (11, 2, 100, 49.99),
        (8, 3, 20, 699.99),
        (9, 4, 75, 79.99),
        (10, 5, 30, 199.99),
        (8, 6, 150, 29.99),
        (12, 7, 40, 149.99),
        (7, 8, 100, 21.99),
        (11, 9, 20, 20.99),
        (9, 10, 25, 599.99);  

--populates the orders table with order details and their corresponding customer ids
insert into orders(order_number, cust_id, order_date, order_status) values
('ORD001', 17, '2024-01-15', 'Processing'),
('ORD002', 18, '2024-01-16', 'Shipped'),
('ORD003', 19, '2024-01-17', 'Delivered'),
('ORD004', 20, '2024-01-18', 'Cancelled'),
('ORD005', 21, '2024-01-19', 'Processing'),
('ORD006', 22, '2024-01-20', 'Shipped'),
('ORD007', 23, '2024-01-21', 'Delivered'),
('ORD008', 18, '2024-01-22', 'Cancelled'),
('ORD009', 20, '2024-01-23', 'Processing'),
('ORD010', 22, '2024-01-24', 'Shipped'),
('ORD011', 17, '2024-01-25', 'Delivered'),
('ORD012', 19, '2024-01-26', 'Cancelled'),
('ORD013', 21, '2024-01-27', 'Processing'),
('ORD014', 23, '2024-01-28', 'Shipped'),
('ORD015', 17, '2024-01-29', 'Delivered'),
('ORD016', 21, '2024-01-30', 'Cancelled'),
('ORD017', 19, '2024-01-31', 'Processing'),
('ORD018', 23, '2024-02-01', 'Shipped'),
('ORD019', 17, '2024-02-02', 'Delivered'),
('ORD020', 20, '2024-02-03', 'Cancelled');

--populates the order_details table with order item details and their corresponding order and listing ids
insert into order_details(order_id, listing_id, product_name, quantity, price, total) values
(21, 25, 'Tennis Racket', 1, 199.99, 199.99),
(22, 26, 'Board Game', 2, 29.99, 59.98),
(23, 27, 'Car Battery', 1, 149.99, 149.99),
(24, 83, 'Novel Book', 3, 21.99, 65.97),
(25, 84, 'Organic Coffee', 5, 14.99, 74.95),
(26, 85, 'Baby Stroller', 1, 299.99, 299.99),
(27, 86, 'Laptop', 1, 799.99, 799.99),
(28, 87, 'Jeans', 2, 49.99, 99.98),
(29, 88, 'Sofa', 1, 699.99, 699.99),
(30,89,'Skincare Set',2 ,79.99 ,159.98),
(31,90,'Tennis Racket',1 ,199.99 ,199.99),
(32,91,'Board Game',2 ,29.99 ,59.98),
(33,92,'Car Battery',1 ,149.99 ,149.99),
(34,93,'Novel Book',3 ,21.99 ,65.97),
(35,94,'Organic Coffee',5 ,14.99 ,74.95),
(36,95,'Baby Stroller',1 ,299.99 ,299.99),
(37,96,'Laptop',1 ,799.99 ,799.99),
(38,97,'Jeans',2 ,49.99 ,99.98),
(39,98,'Sofa',1 ,699.99 ,699.99),
(40,46,'Skincare Set',2 ,79.99 ,159.98);

--populates the payments table with payment details and their corresponding order ids
insert into payments(order_id, payment_date, payment_amount, payment_method) values
(21, '2024-02-04', 199.99, 'Credit Card'),
(22, '2024-02-05', 59.98, 'PayPal'),
(23, '2024-02-06', 149.99, 'Bank Transfer'),
(24, '2024-02-07', 65.97, 'Credit Card'),
(25, '2024-02-08', 74.95, 'PayPal'),
(26, '2024-02-09', 299.99, 'Bank Transfer'),
(27, '2024-02-10', 799.99, 'Credit Card'),
(28, '2024-02-11', 99.98, 'PayPal'),
(29, '2024-02-12', 699.99, 'Bank Transfer'),
(30, '2024-02-13', 159.98, 'Credit Card'),
(31, '2024-02-14', 199.99, 'PayPal'),
(32, '2024-02-15', 59.98, 'Bank Transfer'),
(33, '2024-02-16', 149.99, 'Credit Card'),
(34, '2024-02-17', 65.97, 'PayPal'),
(35, '2024-02-18', 74.95, 'Bank Transfer'),
(36, '2024-02-19', 299.99, 'Credit Card'),
(37, '2024-02-20', 799.99, 'PayPal'),
(38, '2024-02-21', 99.98, 'Bank Transfer'),
(39, '2024-02-22', 699.99, 'Credit Card'),
(40, '2024-02-23', 159.98, 'PayPal');

--populates the pickup_stations table with pickup station details and their corresponding employee ids
insert into pickup_stations(location, emp_id, contacts) values
('Nairobi Pickup Station', 6, '254788123456'),
('mombasa Pickup Station', 7, '254788987654'),
('kisumu Pickup Station', 8, '254788111222'),
('kiambu Pickup Station', 9, '254788333444'),
('nakuru Pickup Station', 10, '254788555666'),
('narok Pickup Station', 11, '254788777888'),
('machakos Pickup Station', 12, '254788999000');

--populates the deliveries table with delivery details and their corresponding order ids, pickup station ids, and employee ids
insert into deliveries(order_id, delivery_date, delivery_status, delivery_address, pck_station_id, emp_id) values
(21, '2024-02-05', 'Shipped', '123 Nairobi St', 8, 6),
(22, '2024-02-06', 'Delivered', '456 Mombasa Ave', 9, 7),
(23, '2024-02-07', 'Shipped', '789 Kisumu Rd', 10, 8),
(24, '2024-02-08', 'Cancelled', '321 Kiambu Blvd', 11, 9),
(25, '2024-02-09', 'Shipped', '654 Nakuru Ln', 12, 10),
(26, '2024-02-10', 'Delivered', '987 Narok Dr', 13, 11),
(27, '2024-02-11', 'Shipped', '147 Machakos St', 14, 12),
(28, '2024-02-12', 'Cancelled', '258 Nairobi St', 8, 6),
(29, '2024-02-13', 'Shipped', '369 Mombasa Ave', 12, 7),
(30, '2024-02-14', 'Delivered', '741 Kisumu Rd', 11, 8),
(31, '2024-02-15', 'Shipped', '852 Kiambu Blvd', 9, 9),
(32, '2024-02-16', 'Cancelled', '963 Nakuru Ln', 12, 10),
(33, '2024-02-17', 'Shipped', '159 Narok Dr', 10, 11),
(34, '2024-02-18', 'Delivered', '753 Machakos St', 8, 12),
(35, '2024-02-19', 'Shipped', '456 Nairobi St', 8, 6),
(36, '2024-02-20', 'Cancelled', '789 Mombasa Ave', 9, 7),
(37, '2024-02-21', 'Shipped', '123 Kisumu Rd', 14, 8),
(38, '2024-02-22', 'Delivered', '321 Kiambu Blvd', 10, 9),
(39, '2024-02-23', 'Shipped', '654 Nakuru Ln', 13, 10),
(40, '2024-02-24', 'Cancelled', '987 Narok Dr', 10, 11);

--populates the reviews table with review details and their corresponding customer ids and product ids
insert into reviews(cust_id, product_id, rating, review_text) values
(18, 2, 4, 'Good quality jeans.'),
(19, 3, 3, 'Sofa is okay for the price.'),
(20, 4, 5, 'Love the skincare set!'),
(21, 5, 4, 'Tennis racket works well.'),
(22, 6, 2, 'Board game was missing pieces.')
(23, 7, 5, 'Car battery lasted long.'),
(19, 8, 4, 'Novel book was engaging.'),
(23, 9, 3, 'Organic coffee tastes average.'),
(20, 10, 5, 'Baby stroller is very sturdy.'),
(18, 1, 4, 'Good value for money.'),
(19, 2, 5, 'Jeans fit perfectly!'),
(21, 3, 2, 'Sofa is not very comfortable.'),
(20, 4, 4, 'Skincare set has nice products.'),
(21, 5, 3, 'Tennis racket is decent.'),
(22, 6, 1, 'Board game was damaged on arrival.'),
(23, 7, 4, 'Car battery performs well.'),
(18, 8, 5, 'Novel book is a must-read!'),
(23, 9, 2, 'Organic coffee is too bitter for me.'),
(20, 10, 4, 'Baby stroller is easy to maneuver.');

--populates the feedback table with feedback details and their corresponding review ids and customer ids
insert into feedback(review_id, cust_id, feedback_text, feedback_date) values
(21, 18, 'Thank you for your review!', '2024-02-25'),
(22, 19, 'We appreciate your feedback!', '2024-02-26'),
(23, 20, 'Glad you love the skincare set!', '2024-02-27'),
(24, 21, 'Thank you for your review!', '2024-02-28'),
(25, 22, 'We are sorry to hear about the issue with the board game. Please contact our support team.', '2024-02-29'),
(26, 23, 'Thank you for your positive feedback on the car battery!', '2024-03-01'),
(33, 19, 'We are happy to hear you enjoyed the novel book!', '2024-03-02'),
(34, 23, 'We are sorry to hear that the organic coffee did not meet your expectations. We will share your feedback with our supplier.', '2024-03-03'),
(35, 20, 'Thank you for your positive feedback on the baby stroller!', '2024-03-04'),
(36, 18, 'We are glad to hear that you found good value for money with the smartphone!', '2024-03-05'),
(37, 19, 'Thank you for your positive feedback on the jeans!', '2024-03-06'),
(38, 21, 'We are sorry to hear that the sofa did not meet your comfort expectations. We will share your feedback with our product team.', '2024-03-07'),
(39, 20, 'Thank you for your feedback on the skincare set! We are glad you liked the products.', '2024-03-08'),
(40, 21, 'We are sorry to hear that the tennis racket was only decent. We will share your feedback with our supplier.', '2024-03-09'),
(41, 22, 'We are sorry to hear about the issue with the board game. Please contact our support team for a resolution.', '2024-03-10'),
(42, 23, 'Thank you for your positive feedback on the car battery!', '2024-03-11'),
(43, 18, 'We are glad to hear that you enjoyed the novel book!', '2024-03-12'),
(44, 23, 'We are sorry to hear that the organic coffee did not meet your expectations. We will share your feedback with our supplier.', '2024-03-13'),
(45, 20, 'Thank you for your positive feedback on the baby stroller!', '2024-03-14'),
(46, 18, 'We are glad to hear that you found good value for money with the smartphone!', '2024-03-15');


