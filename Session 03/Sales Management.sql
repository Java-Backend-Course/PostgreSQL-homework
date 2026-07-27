-- 1
CREATE SCHEMA sales;

-- 2
CREATE TABLE sales.products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(255) NOT NULL,
	price NUMERIC(10,2) NOT NULL,
	stock_quantity INT DEFAULT 0
);

-- 3
CREATE TABLE sales.orders (
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	member_id INT REFERENCES library.members(member_id)
);

-- 4
CREATE TABLE sales.orderdetails (
	order_detail_id SERIAL PRIMARY KEY,
	order_id INT NOT NULL REFERENCES sales.orders(order_id),
	product_id INT NOT NULL REFERENCES sales.products(product_id),
	quantity INT CHECK (quantity >= 0)
);