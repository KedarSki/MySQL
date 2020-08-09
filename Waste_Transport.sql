create database Waste_Transport;

create table trucks (
id int primary key,
make varchar (200) not null,
model varchar (200) not null
);

create table drivers (
id int primary key,
firstName varchar (200) not null,
surname varchar (200) not null
);

create table loader1 (	
id int primary key,
firstName varchar (200) not null,
surname varchar (200) not null
);

create table loader2 (	
id int primary key,
firstName varchar (200) not null,
surname varchar (200) not null
);

create table customers (
id int primary key,
companyName varchar (200) not null,
ownerName varchar (200) not null,
ownerSurname varchar (200) not null,
phoneNumber varchar (200) not null,
emailAdress varchar (200) not null,
streetName varchar (200) not null,
streetNumber varchar (200) not null,
postCode varchar (200) not null
);

create table routes (
id int primary key,
truckId int
startTime int not null,
endTime int not null,
foreign key (truckId) references trucks (id)
);

create table area (
id int primary key,
customerId int,
area varchar (200) not null,
city varchar (200) not null,
postCode varchar (200) not null,
foreign key (customerId) references customers (id)
);

create table team (
id int primary key,
driverId int,
loader1Id int,
loader2Id int,
foreign key (driverId) references drivers (id),
foreign key (loader1Id) references loader1 (id),
foreign key (loader2Id) references loader2 (id)
);

create table driveOut (
id int primary key,
teamId int,	
foreign key (teamId) references team (id)
); 

insert into trucks (id, make, model, callingNumber)
	values (1, "Mercedes", "Axor", "M9587"),
	(2, "Mercedes", "Atego", "M1783"),
	(3, "Volvo", "Fe 320", "M4563");
    
insert into drivers (id, firstName, surname)
	values (1, "Steve", "Orme"),
	(2, "James", "Thompson"),
	(3, "Jack", "Culcay"),
	(4, "Peter", "Cunningham"),
	(5, "Adam", "Smith"),
	(6, "Joe", "Ohama");
    
insert into loader1 (id, firstName, surname)
	values (1, "John", "Williams"),
	(2, "George", "Evans"),
	(3, "Adam", "Taylor"),
	(4, "Steve", "Davies"),
	(5, "William", "Jones"),
	(6, "David", "Brown"),

insert into loader2(id, firstName, surname)	
	values (1, "Paul", "Johnson"),
	(2, "Daniel", "Hudson"),
	(3, "John", "Briggs"),
	(4, "Jonatan", "Wright"),
	(5, "Charles", "Roberts"),
	(6, "Henry", "Redford");

insert into customers (id, companyName, ownerName, ownerSurname, phoneNumber, emailAdress, streetName, streetNumber, postCode)
	values(1, "The Fish Club", "James", "Wilkinson", "+447785689875", "email@gmail.com", "St. John's Hill", "189", "SW10 7NJ"),
	(2, "Company Club", "Conor", "McGregor", "+447888888", "email2@gmail.com", "Napier Road", "12", "NW10 5XH"),
	(3, "N/A", "Shoen", "O'Conor", "+447787878787", "email2@gmail.com", "Archway Road", "155", "N2 5JK");
		
insert into area (id, customerId, area, city, postCode)
    	values (1, 1, "Clapham", "London", "SW10"),
    	(2,3, "Archway", "London", "N2"),
    	(3,2, "Kensal Green", "London", "NW10");

insert into team (id, driverId, loader1Id, loader2Id)
	values (1, 1, 4, 5),
	(2, 2, 2, 1),
	(3, 3, 3, 6);

insert into driveOut (id, teamId)
	values (1, 3),
	(2, 2),
	(3, 1);
