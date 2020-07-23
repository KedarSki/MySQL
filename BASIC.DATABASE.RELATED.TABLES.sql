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