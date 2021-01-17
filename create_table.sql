CREATE TABLE customers(customer_id INT, customer_name VARCHAR(150),
contact_name VARCHAR(100), address VARCHAR(200), city VARCHAR(20), postal_code VARCHAR(20), country VARCHAR(20), PRIMARY KEY(customer_id));

CREATE TABLE products(product_id INT AUTO_INCREMENT,product_name VARCHAR(200),supplier_id INT,category_id INT,unit VARCHAR(200),price DOUBLE(4,2), PRIMARY KEY(product_id));

CREATE TABLE orders(order_id INT PRIMARY KEY,
customer_id INT,employee_id INT,order_date DATE,shipper_id INT);

CREATE TABLE order_details(order_details_id INT NOT NULL,order_id INT,product_id INT,quantity INT, PRIMARY KEY(order_details_id));

CREATE TABLE suppliers(supplier_id INT NOT NULL,supplier_name VARCHAR(200),contact_name VARCHAR(200),address VARCHAR(200),city VARCHAR(100),postal_code VARCHAR(100),country VARCHAR(100),PRIMARY KEY(supplier_id));

CREATE TABLE shippers(shipper_id INT PRIMARY KEY NOT NULL,shipper_name VARCHAR(100));
