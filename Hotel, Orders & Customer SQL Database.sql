USE Pujitha
CREATE TABLE Hotels
(
	Hotel_Name VARCHAR(30),
	Contact_Number BIGINT,
	City VARCHAR(30),
	Item VARCHAR(20),
	Cost INTEGER,
	Timings VARCHAR(20),
	Htype VARCHAR(20)
)

ALTER TABLE Hotels
ALTER COLUMN Contact_Number VARCHAR(20)


ALTER TABLE Hotels
ALTER COLUMN Hotel_Name VARCHAR(50)

ALTER TABLE Hotels
ALTER COLUMN City VARCHAR(50)

ALTER TABLE Hotels
ALTER COLUMN Item VARCHAR(50)

ALTER TABLE Hotels
ALTER COLUMN Timings VARCHAR(50)

ALTER TABLE Hotels
ALTER COLUMN Htype VARCHAR(50)


INSERT INTO Hotels (Hotel_Name, Contact_Number, City, Item, Cost, Timings, Htype) VALUES
('Cafe Coffee Day', '9876543210', 'Hyderabad', 'Coffee', 120, '10 am - 10 pm', 'Cafe'),
('Karachi Bakery', '9123456780', 'Hyderabad', 'Samosa', 30, '09 am - 09 pm', 'Bakery'),
('The French Cafe', '9876501234', 'Bangalore', 'French fries', 80, '10 am - 11 pm', 'Cafe'),
('Biryani House', '9988776655', 'Hyderabad', 'Biryani', 250, '10 am - 11 pm', 'Biryani'),
('Karachi Bakery', '9123498765', 'Bangalore', 'Cake', 150, '09 am - 09 pm', 'Bakery'),
('Spice Day', '9876541123', 'Kolkata', 'Samosa', 25, '08 am - 08 pm', 'Cafe'),
('Tasty Treats', '9876509876', 'Kolkata', 'French fries', 70, '09 am - 10 pm', 'FastFood'),
('Hyderabad Cafe', '9123454321', 'Hyderabad', 'Coffee', 100, '10 am - 10 pm', 'Cafe'),
('Biryani Palace', '9988771122', 'Bangalore', 'Biryani', 220, '11 am - 11 pm', 'Biryani');

CREATE TABLE Orders
(
	OID INTEGER,
	Cname 	VARCHAR(50),
	Item VARCHAR(50),
	Amount INTEGER,
	Quantity INTEGER	,
	City VARCHAR(50),
	Payment_Type VARCHAR(50) 
)

INSERT INTO Orders (OID, Cname, Item, Amount, Quantity, City, Payment_Type) VALUES
(1, 'Geetha', 'Chicken Biryani', 500, 2, 'Bangalore', 'Cash'),
(2, 'Rohan', 'Mutton Biryani', 600, 1, 'Hyderabad', 'Gpay'),
(3, 'Sahana', 'Veg Biryani', 300, 1, 'Kolkata', 'Phonepe'),
(4, 'Anish', 'Chicken Biryani', 250, 1, 'Bangalore', 'Cash'),
(5, 'John', 'Mutton Biryani', 600, 2, 'Kolkata', 'Card'),
(6, 'Geetha', 'Paneer Biryani', 400, 1, 'Hyderabad', 'Gpay'),
(7, 'Kiran', 'Chicken Biryani', 500, 2, 'Bangalore', 'Phonepe'),
(8, 'Sahana', 'Mutton Biryani', 600, 1, 'Kolkata', 'Gpay'),
(9, 'Rohan', 'Veg Biryani', 300, 1, 'Hyderabad', 'Cash'),
(10, 'Anitha', 'Chicken Biryani', 500, 2, 'Hyderabad', 'Phonepe');

CREATE TABLE Registrations
(
	Cust_ID	INTEGER,
	Cname VARCHAR(50),
	Phone VARCHAR(50),
	Email VARCHAR(50),
	Location VARCHAR(50),
	Age INTEGER,
	FoodPreference VARCHAR(50)
)

INSERT INTO Registrations (Cust_ID, Cname, Phone, Email, Location, Age, FoodPreference) VALUES
(101, 'Geetha', 9123456780, 'geetha@email.com', 'Hyderabad', 28, 'Veg'),
(102, 'Rohan', 9876543210, 'rohan@email.com', 'Hyderabad', 35, 'Non-Veg'),
(103, 'Sahana', 9988776655, 'sahana@email.com', 'Kolkata', 42, 'Veg'),
(104, 'Anish', 9123498765, 'anish@email.com', 'Bangalore', 30, 'Non-Veg'),
(105, 'John', 9876501234, 'john@email.com', 'Kolkata', 55, 'Non-Veg'),
(106, 'Anitha', 9988771122, 'anitha@email.com', 'Hyderabad', 48, 'Veg'),
(107, 'Kiran', 9123454321, 'kiran@email.com', 'Bangalore', 25, 'Non-Veg'),
(108, 'Neha', 9876541123, 'neha@email.com', 'Kolkata', 60, 'Veg'),
(109, 'Sana', 9988773344, 'sana@email.com', 'Hyderabad', 52, 'Non-Veg'),
(110, 'Arjun', 9123491234, 'arjun@email.com', 'Bangalore', 40, 'Non-Veg');


SELECT *
FROM HOTELS

SELECT *
FROM Orders

SELECT *
FROM Registrations


--1.Write a query to get total number of Cafes in Hyderabad and Bangalore 
SELECT City,COUNT(*) Total_cafes
FROM Hotels
WHERE City IN ('Hyderabad','Bangalore') AND HType='Cafe'
GROUP BY City

--2.Write a query to get the List of hotels which provide Samosa 
SELECT *
FROM Hotels
WHERE Item='Samosa '

--3.Write a query to get the List of hotels that ends with 'Day' 
SELECT *
FROM Hotels
WHERE Hotel_name LIKE '% Day'

--4.Write a query to get the Total Number of Bakeries in Hyderabad 
SELECT  COUNT(*) Total_Bakeries
FROM Hotels
WHERE CITY = 'Hyderabad' AND Htype='Bakery'

--5.	Write a query to get the Average cost of Biryani in Hyderabd 
SELECT Item,city,ROUND(AVG(Cost),2) AVG_cost
FROM Hotels
WHERE Htype='Biryani' AND city ='Hyderabad'
GROUP BY ITEM,city

--6.	Write a query to get the Number of Hotels in hyderabad which opens at 10 AM 
SELECT COUNT(*) Total_hotels
FROM Hotels
WHERE City = 'Hyderabad' AND Timings Like '10 am%'

--7.	Write a query to get the Number of Karachi Bakery branches in hyderabad 
SELECT COUNT(*) Total_karachi_bakery
FROM Hotels
WHERE Hotel_name='Karachi Bakery' AND City='Hyderabad'

--8.Write a query to get the Hotels providing Samosa and French fries in Kolkata 
SELECT Hotel_name
FROM Hotels
WHERE Item IN ('Samosa ','French fries ') AND City = 'Kolkata '

--9.Write a query to get the Maximum Cost of an Item in Bangalore 
SELECT MAX(Cost) Max_cost
FROM Hotels
WHERE City='Bangalore'

--10.	Write a query to get all the details of hotels in Kolkata 
SELECT *
FROM Hotels
WHERE City= 'Kolkata'


--ORDERS
--1.	Write a query to get number of chicken biryani orders in Bangalore 
SELECT COUNT(*) Total_chicken_biryani
FROM Orders
WHERE City = 'Bangalore'

--2.	Write a query to get list of customer names who ordered Mutton Biryani 
SELECT Cname
FROM Orders
WHERE Item='Mutton Biryani '

--3.	Write a query to fetch the items ordered by Geetha 
SELECT Cname,Item 
FROM Orders
WHERE Cname='Geetha'

--4.	Write a query to fetch the details of Customer who paid using Phonepe or gpay 
SELECT * 
FROM Orders
WHERE Payment_Type IN ('Phonepe','Gpay')

--5.	Write a query to get the customer names starts with any character followed by hn and ends with any number of characters 
SELECT Cname
FROM Orders
WHERE Cname LIKE '%hn%'

--6.	Extract the Number of Biryani Orders (Any Kind of Biryani) 
SELECT Item,COUNT(Item) Total_Biryani
FROM Orders
WHERE Item Like '%Biryani '
GROUP BY Item

--7.	Write a query to get the total Amount on Orders in Kolkata 
SELECT SUM(Amount) Total_orders_kolkata
FROM Orders
WHERE City = 'Kolkata'

--8. Write a query to get the customer names with three letters 
SELECT Cname
FROM Orders 
WHERE Cname LIKE '___'

--9.	Write a query to get Number of unique items ordered. 
SELECT DISTINCT Item
FROM Orders

--10.	Write a query to get the total orders in Hyderabad and Kolkata 
SELECT COUNT(*) Total_Orders
FROM Orders
WHERE City IN ('Hyderabad','Kolkata')


--REGISTRATIONS
--1.	Extract the number of veg preferrers 
SELECT COUNT(*) Total_veg_count
FROM Registrations
WHERE FoodPreference = 'Veg'

--2.	Write a query to get theTotal Registrations in Kolkata 
SELECT COUNT(*)
FROM Registrations
WHERE location = 'Kolkata'

--3.	Write a query get the unique list of cities 
SELECT DISTINCT Location
FROM Registrations

--4.	Write  a query to get Whose names ends with "a" 
SELECT Cname
FROM Registrations
WHERE Cname LIKE '%a'
--5.	Write a query to get the names that starts with any 2 characters and ends with "na"
SELECT Cname
FROM Orders
WHERE Cname LIKE '__na'

--6.	Write query to find the details of the customers whose age is between 30 to 50 
SELECT *
FROM Registrations
WHERE Age BETWEEN 30 AND 50

--7.	Write  a query to get the details of customers from kolkata whose age is above 50 
SELECT *
FROM Registrations
WHERE Location = 'Kolkata' AND AGE>50

--8. Write a query to fetch the number of customer in location ‘hyd’. 
SELECT COUNT(*) Total_cust
FROM Registrations
WHERE Location = 'Hyderabad'

--9.	Extract theTotal Number of Non veg preferrers in Hyderabad 
SELECT COUNT(*) Total_VEG
FROM Registrations
WHERE LOcation = 'Hyderabad' AND FoodPreference NOT IN ('Veg')

--10.	Extract the details of customers from Hyderabad and Bangalore 
SELECT *
FROM Registrations
WHERE Location IN ('Hyderabad','Bangalore')




