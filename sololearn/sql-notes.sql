SHOW DATABASES;

SHOW TABLES;

SHOW COLUMNS from customers;

select id, firstname, lastname, city from customers offset 3 limit 4;

select id, name
FROM customers
LIMIT 4,12; 

SELECT City FROM customers;

SELECT customers.City FROM customers;

SELECT CONCAT(FirstName, ', ' , City) FROM customers;

SELECT CONCAT(FirstName,', ', City) AS new_column 
FROM customers;

SELECT FirstName, UPPER(LastName) AS LastName 
FROM employees;


SELECT Salary, SQRT(Salary) 
FROM employees;

SELECT AVG(Salary) FROM employees;

SELECT SUM(Salary) FROM employees;


SELECT FirstName, Salary FROM employees 
WHERE  Salary > (SELECT AVG(Salary) FROM employees) 
ORDER BY Salary DESC;

select name, category, price, fatpercentage
 from foods where fatpercentage < (select avg(fatpercentage) from foods);

SELECT MIN(Salary) AS Salary FROM employees;

SELECT column_name(s)
FROM table1 INNER JOIN table2 
ON table1.column_name=table2.column_name;

SELECT table1.column1, table2.column2...
FROM table1 LEFT OUTER JOIN table2
ON table1.column_name = table2.column_name;

SELECT table1.column1, table2.column2...
FROM table1 RIGHT OUTER JOIN table2
ON table1.column_name = table2.column_name;

<join3>

<join4>

SELECT FirstName, LastName, Company FROM businessContacts
UNION
SELECT FirstName, LastName, NULL FROM otherContacts;

select * from NorwayChess
UNION
select * from TataSteel 
order by rating desc;

SELECT ID, FirstName, LastName, City FROM First
UNION ALL
SELECT ID, FirstName, LastName, City FROM Second;

INSERT INTO table_name (column1, column2, column3, ...,columnN)  
VALUES (value1, value2, value3,...valueN);

UPDATE table_name
SET column1=value1, column2=value2, ...
WHERE condition;


/*****/
The most common data types:
Numeric
INT -A normal-sized integer that can be signed or unsigned.
FLOAT(M,D) - A floating-point number that cannot be unsigned. You can optionally define the display length (M) and the number of decimals (D).
DOUBLE(M,D) - A double precision floating-point number that cannot be unsigned. You can optionally define the display length (M) and the number of decimals (D).

Date and Time
DATE - A date in YYYY-MM-DD format.
DATETIME - A date and time combination in YYYY-MM-DD HH:MM:SS format.
TIMESTAMP - A timestamp, calculated from midnight, January 1, 1970
TIME - Stores the time in HH:MM:SS format.

String Type
CHAR(M) - Fixed-length character string. Size is specified in parenthesis. Max 255 bytes.
VARCHAR(M) - Variable-length character string. Max size is specified in parenthesis.
BLOB - "Binary Large Objects" and are used to store large amounts of binary data, such as images or other types of files.
TEXT - Large amount of text data.

SQL constraints are used to specify rules for table data.

The following are commonly used SQL constraints:
NOT NULL - Indicates that a column cannot contain any NULL value.
UNIQUE - Does not allow to insert a duplicate value in a column. The UNIQUE constraint maintains the uniqueness of a column in a table. More than one UNIQUE column can be used in a table.
PRIMARY KEY - Enforces the table to accept unique data for a specific column and this constraint create a unique index for accessing the table faster.
CHECK - Determines whether the value is valid or not from a logical expression.
DEFAULT - While inserting data into a table, if no value is supplied to a column, then the column gets the value set as DEFAULT.

/********/
CREATE TABLE Users (
id int NOT NULL AUTO_INCREMENT,
username varchar(40) NOT NULL, 
password varchar(10) NOT NULL,
PRIMARY KEY(id)
);


ALTER TABLE People ADD DateOfBirth date;

All rows will have the default value in the newly added column, which, in this case, is NULL.


ALTER TABLE People 
DROP COLUMN DateOfBirth;

DROP TABLE People;

ALTER TABLE People
RENAME FirstName TO name;

RENAME TABLE People TO Users;


CREATE VIEW view_name AS
SELECT column_name(s)
FROM table_name
WHERE condition;

CREATE OR REPLACE VIEW view_name AS
SELECT column_name(s)
FROM table_name
WHERE condition;

DROP VIEW List;

alter table people drop column age;


//Exercise
/* name - "Slim", type - "Giraffe", country_id - 1 */

insert into animals values('Slim', 'Giraffe', 1);

select name, type, country from animals
inner join countries
on
animals.country_id = countries.id
order by animals.country_id desc;


