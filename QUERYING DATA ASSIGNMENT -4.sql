-- MYSQL ASSIGNMENT 4 

CREATE DATABASE FACT_TABLE ;
USE FACT_TABLE;

CREATE TABLE COUNTRY
(ID int primary key,Country_name varchar (20) not null,
Population int, Area decimal (6,2)); 

CREATE TABLE PERSONS (ID INT PRIMARY KEY, Country_Id int unique,
Country_name varchar (20) not null,Fname varchar(20) not null,
Lname varchar (20),Population int ,rating decimal (2,1));

INSERT INTO Country VALUES
(1, 'USA', 331002651, 9833.00),
(2, 'Canada', 37742154, 9984.00),
(3, 'India', 1380004385, 3287.00),
(4, 'China', 1439323776, 9596.00),
(5, 'Brazil', 212559417, 8515.00),
(6, 'Russia', 145934462, 1709.00),
(7, 'Australia', 25499884, 7692.00),
(8, 'Germany', 83783942, 3570.00),
(9, 'UK', 67886011, 2430.00),
(10, 'France', 65273511, 5516.00);


INSERT INTO PERSONS  VALUES 
(1, 111, 'USA', 'John', 'Doe', 331002651, 4.5),
(2, 222, 'Canada', 'Emily', 'Clark', 37742154, 4.2),
(3, 333, 'India', 'Amit', 'Sharma', 1380004385, 4.8),
(4, 444, 'China', 'Li', 'Wang', 1439323776, 4.6),
(5, 555, 'Brazil', 'Carlos', 'Silva', 212559417, 4.3),
(6, 666, 'Russia', 'Ivan', 'Petrov', 145934462, 4.4),
(7, 777, 'Australia', 'James', 'Brown', 25499884, 4.1),
(8, 888, 'Germany', 'Hans', 'Meier', 83783942, 4.7),
(9, 999, 'UK', 'William', 'Smith', 67886011, 4.0),
(10,1000, 'France', 'Pierre', 'Dubois', 65273511, 4.5);


select * from persons ;
select * from country ;

SELECT DISTINCT COUNTRY_NAME FROM PERSONS;
SELECT FNAME AS "FIRSTNAME" FROM PERSONS  ;
SELECT LNAME AS "LASTNAME" FROM PERSONS  ;
SELECT FNAME,LNAME FROM PERSONS WHERE RATING>=4.0;
SELECT COUNTRY_NAME FROM PERSONS WHERE POPULATION>=1000000;
SELECT FNAME,LNAME FROM PERSONS WHERE COUNTRY_NAME= "USA" AND RATING>= 4.5;
SELECT FNAME,LNAME FROM PERSONS WHERE COUNTRY_NAME=NULL;
SELECT FNAME,LNAME FROM PERSONS WHERE COUNTRY_NAME in('USA','canada','UK');
SELECT FNAME,LNAME FROM PERSONS WHERE COUNTRY_NAME not in('india','australia');
SELECT COUNTRY_NAME FROM country WHERE POPULATION between 500000 and 2000000;
SELECT * FROM country WHERE COUNTRY_NAME NOT LIKE 'C%' ;
 
 
 ##FINISH 
 