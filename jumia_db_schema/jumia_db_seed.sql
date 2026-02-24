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

--populates the customers table with customer details and their corresponding account ids
insert into customers(acc_id, cust_name, contacts, national_id) values
(1, 'Alice Wamaitha', '254788123456', 'ID123456789'),
(2, 'Kevin Gichuru', '254788987654', 'ID987654321'),
(3, 'Charlie Kirira', '254788111222', 'ID111222333'),
(4, 'Diana Marua', '254788333444', 'ID333444555'),
(5, 'Edward Gura', '254788555666', 'ID98765321'),
(6, 'Fiona Makena', '254788777888', 'ID112233445'),
(7, 'George Thompson', '254788999000', 'ID556677889');

--populates the vendors table with vendor details and their corresponding account ids
insert into vendors(acc_id, vendor_name, contacts, national_id) values

