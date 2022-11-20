
CREATE TABLE Sample(
    	Cust_id int(10) Null,
		Name varchar(255) Null,
		Address varchar(255) Null,
		City varchar(255)
);
CREATE TABLE Sales(
    	ID int(10) Not Null,
	Product_name varchar(255) Not Null,
	Price_per_unit int Not Null,
	Quantity int Not Null
);

INSERT INTO Sales(ID,Product_name,Price_per_unit,Quantity)
VALUES(1,'Coca Cola',28,500),(2,'Maaza',30,500),(3,'Mountain Dew',50,1000),(4,'7Up',30,250);

SELECT * FROM Sales;

CREATE VIEW [Total Cost] AS
SELECT Price_per_unit*Quantity, Product_name
FROM Sales;
SELECT * FROM [Total Cost];

CREATE TABLE Persons(
    	ID int(10) Not Null,
	Name varchar(255) Not Null,
	Age int Not Null
);

INSERT INTO Persons(ID,Name,Age)
VALUES(1,'Bob',21),(2,'Sam',19),(3,'Jill',18),(4,'Jim',21),(5,'Sally',19),(6,'Jess',20),(7,'Will',21);

SELECT * FROM Persons;

SELECT SUM(Age)
FROM Persons;

SELECT COUNT(Age) as Count_By_Age,Age
FROM Persons
GROUP BY Age;

CREATE TABLE Data(
   	 Division_ID int(10) Not Null,
	Year int Not Null,
	Revenue int Not Null
);

INSERT INTO Data(Division_ID,Year,Revenue)
VALUES(1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);

SELECT * FROM Data;

SELECT Division_ID
FROM Data
WHERE Year=2021 and Revenue>0;


