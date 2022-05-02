-- INSERT INTO customer (first_name, last_name, customer_email, customer_phone) VALUES
-- ('Jason', 'Mamoa', 'JMO@atlantis.com','1231231234'),
-- ('George', 'Curved', 'curvygeorge19@countrymusic.com', '9876543211'),
-- ('Paul', 'Bearer', 'funeralguy@dontdie.com', '6548521234'),
-- ('Jimmy', 'Hendrix', 'jimbo@yahoo.com', '753598624'),
-- ('Post', 'Malone', 'postbalogna@gmail.com', '9638527411');

-- INSERT INTO mechanic (first_name, last_name, department) VALUES
-- ('Dom', 'Toretto', 'Repairs'),
-- ('Frank', 'James', 'Maintenance'),
-- ('James', 'Franco', 'Repairs'),
-- ('Mr.', 'Anderson', 'Repairs'),
-- ('Kim', 'Kardashian', 'High-Maintenance');

-- INSERT INTO sales_person(first_name, last_name, department) VALUES
-- ('Kristen', 'Stewart', 'New Cars'),
-- ('James', 'Brown', 'New Cars'),
-- ('Kanye', 'West', 'Foreign Cars'),
-- ('Jimmy', 'Neutron', 'Used Cars'),
-- ('Norbert', 'Norbert', 'Used Cars');

-- INSERT INTO inventory (car_make, car_model, car_color, car_year, price) VALUES
-- ('Toyota', 'Tundra', 'Blue', 2015, 35000.00),
-- ('Mercedes', 'Benz', 'White', 2022, 45000.50),
-- ('Bugatti', 'Veyron', 'Black', 2022, 100000.50),
-- ('Honda', 'Civic', 'White', 2016, 20000.98),
-- ('Chevorlet', 'Silverado', 'Grey', 2010, 20000.99);


-- INSERT INTO customer_vehicle (customer_id, car_make, car_model, car_color, car_year, "value") VALUES
-- (1, 'Toyota', 'Tundra', 'Blue', 2016, 30000.00),
-- (2, 'Toyota', 'Tacoma', 'Red', 2009, 7000.00),
-- (3, 'Dodge', 'Ram', 'Black', 2012, 30000.00),
-- (4, 'Dodge', 'Carvan', 'Purple', 1992, 2000.00),
-- (5, 'Nissan', 'Altima', 'Yellow', 2001, 5000.00);

-- INSERT INTO service_order_id(vin_number, mechanic_id, service_type, price, "date") VALUES
-- (1, 1, 'Replacement of Engine', 999.99, '2017-10-13' ),
-- (2, 2, 'Oil Change', 60.00, '2020-04-06'),
-- (3, 3, 'Replacement of U-Joint/Driveshaft', 600.00, '2021-09-20'),
-- (4, 4, 'Replacement of Carb.', 420.00, '2022-05-02'),
-- (5, 5, 'Full Tune-Up', 120.00, '2018-01-01');

-- INSERT INTO sales_invoice (vin_number, inventory_id, sales_person_id, is_trade_in, total_cost_of_car) VALUES
-- (1, 1, 1, True, 35000),
-- (2, 2, 2, False, 4000),
-- (3, 3, 3, True, 65000),
-- (4, 4, 4, True, 79000),
-- (5, 5, 5, False, 100000);