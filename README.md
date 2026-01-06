# Hotel, Orders & Customer Registration – SQL Analysis Project

## Project Overview
This SQL project models a **food ordering ecosystem** involving hotels, customer orders, and user registrations.  
It demonstrates strong hands-on skills in **SQL querying, filtering, aggregation, pattern matching, and real-world business analysis**.

The project is ideal for **SQL fresher roles, Data Analyst interviews, and academic portfolios**.


## Database Design
The database consists of **three main tables**:


### 1️. Hotels Table
Stores information about hotels, items sold, pricing, city, and hotel type.

| Column | Description |
|------|------------|
| Hotel_Name | Name of the hotel |
| Contact_Number | Contact number |
| City | City location |
| Item | Food item provided |
| Cost | Item price |
| Timings | Opening hours |
| Htype | Hotel type (Cafe, Bakery, Biryani, FastFood) |


### 2️. Orders Table
Stores food order transaction details.

| Column | Description |
|------|------------|
| OID | Order ID |
| Cname | Customer name |
| Item | Ordered item |
| Amount | Total bill amount |
| Quantity | Quantity ordered |
| City | Order city |


### 3️. Registrations Table
Stores registered customer information.

| Column | Description |
|------|------------|
| Cust_ID | Customer ID |
| Cname | Customer name |
| Phone | Phone number |
| Email | Email address |
| Location | City |
| Age | Customer age |
| FoodPreference | Veg / Non-Veg |


## Business Questions Solved

### Hotels Analysis
- Total number of cafes in Hyderabad & Bangalore
- Hotels providing specific items (Samosa, French Fries)
- Hotels with names ending in a specific pattern
- Average cost of Biryani by city
- Hotels opening at a specific time
- City-wise hotel distribution
- Maximum item cost in a city


### Orders Analysis
- Total biryani orders by city
- Customers ordering specific food items
- Orders by payment type
- Pattern-based customer name searches
- Total revenue by city
- Unique items ordered
- Orders count across multiple cities


### Customer Registration Analysis
- Veg vs Non-Veg preference count
- City-wise customer registrations
- Age-based customer segmentation
- Customers from specific cities
- Pattern-based name filtering
- Senior customer identification


## SQL Concepts Used
- `CREATE TABLE`, `ALTER TABLE`
- `INSERT INTO`
- `SELECT`, `WHERE`, `GROUP BY`
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MAX`
- `LIKE` pattern matching
- `IN`, `BETWEEN`, `NOT IN`
- Data filtering & business logic queries


## Key Insights
- Hyderabad and Bangalore have high cafe density
- Biryani is the most frequently ordered item
- Digital payments (GPay, PhonePe) are widely used
- Senior customers show strong registration presence
- Veg and Non-Veg preferences vary significantly by city


## Tools & Technologies
- SQL (MySQL / SQL Server compatible)
- Relational Database Concepts
- Data Analysis & Query Optimization


## Files Included
- `Hotels_Orders_Registrations_SQL.sql`  
  (Includes table creation, data insertion, and all analytical queries)


## Why this project matters
This project reflects **real-world SQL usage**, covering:
- Data modeling
- Business-driven query writing
- Pattern searching
- Analytical thinking

It is well-suited for **SQL Developer, Data Analyst, and Entry-Level IT roles**.


## 📌 About
This project is part of my **SQL portfolio**, showcasing practical database handling and analytical query skills.
