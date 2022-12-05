CALL insertCustomer('John', 'Doe', '123 Main St, Houston, TX, 77777', '123-456-7890');
CALL insertCustomer('Jane', 'Doe', '123 Main St, Houston, TX, 77777', '123-456-0987');
CALL insertCustomer('Chad', 'Powers', '555 Midway Dr, Austin, TX 12345', '321-456-7890');
CALL insertCustomer('Bob', 'Johnson', '987 Bob Ave, Bob, TX 98765', '321-654-8790');

CALL insertVehicle('VM58', TRUE, FALSE, 'Ford', 'Raptor', 2020, 'black', 1568.5);
CALL insertVehicle('ME13', FALSE, FALSE, 'BMW', 'M5', 2023, 'blue', 21675.6);
CALL insertVehicle('PM18', TRUE, FALSE, 'Chevrolet', 'Suburban', 2018, 'black', 35210.8);
CALL insertVehicle('JB07', FALSE, FALSE, 'Jaguar', 'F-Type', 2022, 'green', 18965.1);
CALL insertVehicle('HA69', FALSE, FALSE, 'Nissan', 'GT-R', 2021, 'red', 6054.3);
CALL insertVehicle('FF14', TRUE, TRUE, 'Lexus', 'LFA', 2023, 'white', 0);

INSERT INTO salesperson(first_name, last_name)
VALUES
	('Vance','Schwickman'),
	('Ernesto','Rodriguez'),
	('Pam','Halpert'),
	('Esther','Young');
	
INSERT INTO mechanic(first_name, last_name)
VALUES
	('Mike','Luger'),
	('Vic','Johnson'),
	('Samir','Upalu'),
	('Antonio','Banderas'),
	('Thomas','Ling');

INSERT INTO service("type", description, price)
VALUES
	('State Inspection', 'Inspect vehicle for criteria set by the state. Vehicles must pass state inspection to qualify for registration renewal.', 24.99),
	('Oil Change (Regular)', 'Drain old oil from vehicle and replenish with regular motor oil.', 14.99),
	('Oil Change (Synthetic)', 'Drain old oil from vehicle and fill replenish synthetic motor oil.', 14.99),
	('Tire Rotation', 'Swap the tires around on the wheels of the vehicle to optimal configuration for traction and safety.' , 49.99),
	('Brake Pad Replacement (Per Axle)', 'Replace brake pads on a set of wheels, per axle.' , 29.99),
	('Install Flux Capacitor', 'Installs a Flux Capacitor to your vehicle, allowing timetravel once 88mph is achieved.', 88.88);

INSERT INTO part("name", description, price)
VALUES
	('Motor Oil (Reg)', 'Conventional motor oil used for oil change.', 9.99),
	('Motor Oil (Synth)', 'Synthetic motor oil used for oil change.', 29.99),
	('Brake Pads (2)', 'Set of brake pads used for brake pad replacement.', 99.99),
	('Brake Pads (Sport) (2)', 'Set of premium, sport brake pads used for brake pad replacement.', 139.99),
	('Flux Capacitor', 'Special quantum device that unlocks timetravel. Must be able to achieve 88mph.', 88000000.88);
	
CALL insertSalesInvoice('2022-01-15', 1, 3, 1, 58000);
CALL insertSalesInvoice('2022-01-20', 3, 4, 3, 32450);
CALL insertSalesInvoice('2022-02-01', 2, 2, 6, 181700);

CALL insertServiceTicket('2022-01-16 8:30:37', '2022-01-16 11:13:54', 1, 2, 44.98);
CALL insertServiceTicket('2022-01-18 12:15:22', '2022-01-18 17:22:26', 2, 5, 74.98);
CALL insertServiceTicket('2022-03-01 5:48:15', '2022-03-04 20:51:03', 1, 4, 88000429.72);

CALL insertServiceMechanic(1, 3, 2, 0.71, '');
CALL insertServiceMechanic(2, 1, 3, 0.84, 'Vehicle passed inspection, good for registration.');
CALL insertServiceMechanic(2, 4, 1, 1.02, '');
CALL insertServiceMechanic(3, 5, 1, 2.34, '');
CALL insertServiceMechanic(3, 5, 3, 2.11, '');
CALL insertServiceMechanic(3, 6, 4, 30.65, 'Never again will I do another of these installs.');
CALL insertServiceMechanic(3, 6, 5, 33.13, 'Flip the 3rd switch on the left, press the red button, and then pull the lever. Remember, 88 miles an hour!');

CALL insertPartCart(1, 2, 1);
CALL insertPartCart(3, 4, 2);
CALL insertPartCart(3, 5, 1);