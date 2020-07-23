CREATE TABLE Books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (200) NOT NULL,
    author VARCHAR (200) NOT NULL,
    numberPages INT NOT NULL,
    bookGenre varchar (200) not null,
    unique (id)
    );
    
    CREATE TABLE clients (
        id INT AUTO_INCREMENT PRIMARY KEY,
        firstName varchar (200) NOT NULL,
        lastName varchar (200) NOT NULL,
        dateOfBirth varchar (200) NOT NULL
        
        );
        
        CREATE TABLE rentals (
       id int primary key,
            clientsId int,
            bookid int,
            rentalDays int NOT NULL,
            dateFrom varchar (200) NOT NULL,
            dateTo varchar (200) NOT NULL,
            foreign key (clientsId) references clients (id), 
            foreign key (bookid) references Books (id)
            );

insert into books (id, title, author, numberPages, bookGenre)
    
values (1, "Pan Tadeusz", "Adam Mickiewicz", "800", "Romans");
insert into books (id, title, author, numberPages, bookGenre)
values (2, "Potop Tom I", "Henryk Sienkiewicz", "1200", "Romans");
insert into books (id, title, author, numberPages, bookGenre)
values (3, "Potop Tom II", "Henryk Sienkiewicz", "1200", "Romans");
insert into books (id, title, author, numberPages, bookGenre)
values (4, "Potop Tom III", "Henryk Sienkiewicz", "1200", "Romans");

insert into clients (id, firstName, lastName, dateOfBirth)
values(1, "Radosław", "Zamojski", "08.05.1988");
insert into clients (id, firstName, lastName, dateOfBirth)
values(2, "Jan", "Kowalski", "08.04.1958");
insert into clients (id, firstName, lastName, dateOfBirth)
values(3, "Henryk", "Nowak", "18.12.1945");
insert into clients (id, firstName, lastName, dateOfBirth)
values(4, "Grażyna", "Wender", "25.11.1962");
insert into clients (id, firstName, lastName, dateOfBirth)
values(5, "Marta", "Malina", "17.10.1978");

insert into rentals (id, clientsId, bookId, rentalDays, dateFrom, dateTo)
values (1, 1, 4, "14", "01.02.2019", "15.02.2019");
insert into rentals (id, clientsId, bookId, rentalDays, dateFrom, dateTo)
values (2, 3, 2, "14", "01.02.2020", "15.02.2020");
insert into rentals (id, clientsId, bookId, rentalDays, dateFrom, dateTo)
values (3, 1, 4, "10", "01.02.2020", "11.02.2020");