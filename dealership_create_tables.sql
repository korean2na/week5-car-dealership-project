CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	address varchar(255) NOT NULL,
	phone_num varchar(255) NOT NULL
);

CREATE TABLE vehicle (
	vehicle_id serial PRIMARY KEY,
	serial_num varchar(255) UNIQUE NOT NULL,
	for_sale bool NOT NULL,
	"new" bool NOT NULL,
	make varchar(255) NOT NULL,
	model varchar(255) NOT NULL,
	"year" integer NOT NULL,
	color varchar(255) NOT NULL,
	mileage float NOT NULL
);

CREATE TABLE salesperson (
	salesperson_id serial PRIMARY KEY,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL
);

CREATE TABLE sales_invoice (
	invoice_id serial PRIMARY KEY,
	"date" date NOT NULL,
	salesperson_id integer REFERENCES salesperson(salesperson_id),
	customer_id integer REFERENCES customer(customer_id),
	vehicle_id integer REFERENCES vehicle(vehicle_id),
	price float NOT NULL
);

CREATE TABLE service_ticket (
	ticket_id serial PRIMARY KEY,
	datetime_in timestamp NOT NULL,
	datetime_out timestamp NOT NULL,
	customer_id integer REFERENCES customer(customer_id),
	vehicle_id integer REFERENCES vehicle(vehicle_id),
	price float NOT NULL
);
-- Example of TIMESTAMP:
-- 2017-03-31 9:30:20
-- YYYY-MM-DD HH:MM:SS

CREATE TABLE service (
	service_id serial PRIMARY KEY,
	"type" varchar(255) UNIQUE NOT NULL,
	description varchar(1000) NOT NULL,
	price float NOT NULL	
);

CREATE TABLE mechanic (
	mechanic_id serial PRIMARY KEY,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL
);

CREATE TABLE part (
	part_id serial PRIMARY KEY,
	"name" varchar(255) UNIQUE NOT NULL,
	description varchar(1000) NOT NULL,
	price float NOT NULL
);

CREATE TABLE service_mechanic (
	service_mechanic_id serial PRIMARY KEY,
	ticket_id integer REFERENCES service_ticket(ticket_id),
	service_id integer REFERENCES service(service_id),
	mechanic_id integer REFERENCES mechanic(mechanic_id),
	hours_worked float NOT NULL,
	"comments" varchar(1000)
);

CREATE TABLE part_cart (
	part_cart_id serial PRIMARY KEY,
	ticket_id integer REFERENCES service_ticket(ticket_id),
	part_id integer REFERENCES part(part_id),
	quantity integer NOT NULL
);