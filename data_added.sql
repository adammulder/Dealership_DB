--Cars
insert into "Cars" values(1, 'Kia', 'Spectra', 'black');
insert into "Cars" values(2, 'Toyota', 'Camry', 'white');
insert into "Cars" values(3, 'Honda', 'CR-V', 'blue');
insert into "Cars" values(4, 'Hyundai', 'Sonota', 'red');

--Salesperson
insert into "Salesperson" values(1, 'Bob', 'Chedder');
insert into "Salesperson" values(2, 'Sid', 'Beem');
insert into "Salesperson" values(3, 'Marcy', 'Evers');

--Mechanics
insert into "Mechanics" values(1, 'Larry', 'Wells');
insert into "Mechanics" values(2, 'Marc', 'Richards');
insert into "Mechanics" values(3, 'John', 'Sims');

--Customers
insert into "Customer" values(
	1,
	'Quintin'
	'Darcey'
	'124 King Rd, Grand Rapids MI 49507'
	'1234 1234 1234 1234 123 04/12'
	);
insert into "Customer" values(
	2,
	'Stan'
	'Mill'
	'697 Lakers St, Grand Rapids MI 49507'
	'1234 1234 0987 1234 123 04/12'
	);
insert into "Customer" values(
	3,
	'Tom'
	'Jones'
	'45 Turnip Dr, Grand Rapids MI 49507'
	'9876 1234 1234 1234 123 04/12'
	);
	
--Parts
insert into "Parts" values (1, 'transmission', 1);
insert into "Parts" values (2, 'headlights', 2);
insert into "Parts" values (3, 'rotors', 4);

--Service Ticket
insert into "Service_Ticket" values(1, 3, 1, 1, 2, 3500);
insert into "Service_Ticket" values(2, 3, 1, 2, 1, 200);
insert into "Service_Ticket" values(3, 1, 3, null, 3, 75);

--Service history
insert into "Service_History" values(1, 3, 1);
insert into "Service_History" values(2, 3, 2);
insert into "Service_History" values(3, 1, 3);

--Invoice
insert into "Invoice" values(1, 3, 1, 1, 35000, '10/24/20' );
insert into "Invoice" values(2, 1, 2, 3, 25000, '06/13/99' );
insert into "Invoice" values(3, 4, 2, 2, 14000, '09/02/20' );

alter table "Cars" 
add column year_ VARCHAR(20);

select * from "Invoice"
