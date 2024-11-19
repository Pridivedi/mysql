/*Create a database named library */
Create database library;
use library;

/*Create a table book*/
create table Book(
Id int primary key auto_increment,
Title varchar(255),
Author varchar(100),
Year int,
Genre varchar(100)
);

/*Insert the following book records into the books table*/

insert into book(Id, Title, Author, Year, genre)
values(1, "The Great Gatsby", "f.Scott fitzgerald","1925","fiction"),
(2,"Pride and Prejudice", "jane Austein", "1813", "Romance"),
(3,"To kill a Mockingbird", "Harper Lee", "1960", "Fiction"),
(4,"1984", "George Orwell", "1949", "dystopian"),
(5,"Moby dick", "Herman Melville", "1851","Adventure");

/*Write a query to select all books where the title starts with the letter 'T' using the LIKE operator*/
select * from book where title like "T%";

/*Write a query to find all books where the author's last name ends with 'son' using the LIKE operator*/
select * from book where author like '%son';

/*Write a query to find all books where the title contains the word 'and' using the LIKE operator*/
select * from books where title like '%and%';

/*Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator*/
select * from book where title like '%bird%';

/*Write a query to find all books where the title has exactly 3 characters using the REGEXP operator*/
select * from books where title regexp '[0-9]';

/*Write a query to select all books where the title contains a number using the REGEXP operator*/
select * from books where genre regexp 'fiction|adventure';

/*Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator*/
select * from books where title regexp '[a-z]';

/*Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator*/
select * from books where year between 1800 and 1950;

/*Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator*/
select * from books where author regexp '^[A-Za-z]+ [A-Za-z]+$';

/*Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator*/
select * from books where title regexp '^P[A-Za-z]+ [A-Za-z]+$';



/*Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator*/
select * from books where title regexp '^[!@#$%^&*()]';



