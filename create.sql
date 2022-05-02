DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_email VARCHAR(100),
    customer_phone VARCHAR(15)
);

DROP TABLE IF EXISTS customer_vehicle CASCADE;
CREATE TABLE customer_vehicle(
    vin_number SERIAL PRIMARY KEY,
    car_make VARCHAR(20),
    car_model VARCHAR(20),
    car_color VARCHAR(10),
    car_year integer,
    value decimal(9, 2),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS service_order_id CASCADE;
CREATE TABLE service_order_id(
    service_order_id SERIAL PRIMARY KEY,
    service_type VARCHAR(50),
    price DECIMAL(5,2),
    "date" date,
    vin_number SERIAL NOT NULL,
    FOREIGN KEY(vin_number) REFERENCES customer_vehicle(vin_number),
    mechanic_id INTEGER NOT NULL,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);


DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

DROP TABLE IF EXISTS sales_person CASCADE;
CREATE TABLE sales_person(
    sales_person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

DROP TABLE IF EXISTS inventory CASCADE;
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    car_make VARCHAR(50),
    car_model VARCHAR(50),
    car_color VARCHAR(50),
    car_year INTEGER NOT NULL,
    price DECIMAL(8, 2)
);

DROP TABLE IF EXISTS sales_invoice CASCADE;
CREATE TABLE sales_invoice(
    is_trade_in BOOLEAN,
    total_cost_of_car DECIMAL(8,2),
    vin_number VARCHAR(50) NOT NULL,
    FOREIGN KEY(vin_number) REFERENCES customer_vehicle(vin_number),
    inventory_id INTEGER NOT NULL,
    FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id),
    sales_person_id INTEGER NOT NULL,
    FOREIGN KEY(sales_person_id) REFERENCES sales_person(sales_person_id)
    
    

);