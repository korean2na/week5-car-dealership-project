CREATE OR REPLACE PROCEDURE insertCustomer(_first_name varchar, _last_name varchar, _address varchar, _phone_num varchar)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO customer (first_name, last_name, address, phone_num)
	VALUES 
		(_first_name, _last_name, _address, _phone_num);
END;
$$;


CREATE OR REPLACE PROCEDURE insertVehicle(_serial_num varchar, _for_sale boolean, _new boolean, _make varchar, _model varchar, _year integer, _color varchar, _mileage float)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO vehicle (serial_num, for_sale, "new", make, model, "year", color, mileage)
	VALUES 
		(_serial_num, _for_sale, _new, _make, _model, _year, _color, _mileage);
END;
$$;


CREATE OR REPLACE PROCEDURE insertSalesInvoice(_date date, _salesperson_id integer, _customer_id  integer, _vehicle_id integer, price float)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO sales_invoice ("date", salesperson_id, customer_id, vehicle_id, price)
	VALUES 
		(_date, _salesperson_id, _customer_id, _vehicle_id, price);
END;
$$;


CREATE OR REPLACE PROCEDURE insertServiceTicket(_datetime_in timestamp, _datetime_out timestamp, _customer_id  integer, _vehicle_id integer, price float)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO service_ticket (datetime_in, datetime_out, customer_id, vehicle_id, price)
	VALUES 
		(_datetime_in, _datetime_out, _customer_id, _vehicle_id, price);
END;
$$;
-- Example of TIMESTAMP:
-- 2017-03-31 9:30:20
-- YYYY-MM-DD HH:MM:SS


CREATE OR REPLACE PROCEDURE insertServiceMechanic(_ticket_id integer, _service_id integer, _mechanic_id integer, _hours_worked float, _comments varchar)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO service_mechanic (ticket_id, service_id, mechanic_id, hours_worked, "comments")
	VALUES 
		(_ticket_id, _service_id, _mechanic_id, _hours_worked, _comments);
END;
$$;


CREATE OR REPLACE PROCEDURE insertPartCart(_ticket_id integer, _part_id integer, _quantity integer)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO part_cart (ticket_id, part_id, quantity)
	VALUES 
		(_ticket_id, _part_id, _quantity);
END;
$$;