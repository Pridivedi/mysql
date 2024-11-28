create database salesY24;
use salesY24;
CREATE TABLE salesY24 (
    saleID INT,
    productID INT,
    customerID INT,
    salesAsDate DATE,
    Quantity INT,
    unitPrice INT,
    region VARCHAR(50)
);

INSERT INTO salesY24 (saleID, productID, customerID, salesAsDate, Quantity, unitPrice, region)
VALUES (1, 101, 1001, '2024-01-05', 5, 200, 'North'),
       (2, 102, 1002, '2024-01-10', 10, 150, 'East'),
       (3, 103, 1003, '2024-02-15', 10, 300, 'North'),
       (4, 104, 1001, '2024-02-20', 5, 200, 'West'),
       (5, 101, 1004, '2024-03-05', 10, 150, 'East');
       
       select * from salesY24;
       SELECT productID,
       
    INSERT INTO salesY24 (saleID, productID, customerID, salesAsDate, Quantity, unitPrice, region)
VALUES (1, 101, 1001, '2024-01-05', 5, 200, 'North'),
       (2, 102, 1002, '2024-01-10', 10, 150, 'East'),
       (3, 103, 1003, '2024-02-15', 10, 300, 'North'),
       (4, 104, 1001, '2024-02-20', 5, 200, 'West'),
       (5, 101, 1004, '2024-03-05', 10, 150, 'East');
       
       select * from salesY24;
       
#Write a query to calculate the total sales (Quantity * UnitPrice) for each product.
select productID, sum(Quantity*UnitPrice) as total_sales from salesY24 group by productID;

#Write a query to find the total number of products sold in each region.
select sum(Quantity) as units_sold , region from salesY24 where region='North' group by region;

#Write a query to get the average sales amount per product. 
select avg(quantity*UnitPrice) as  average_sales from salesY24 group by productID;

#Find the regions where total sales are more than 3000. 
select region, sum(quantity*UnitPrice) as total_sales from SalesY24  group by region having sum(quantity * unitPrice) > 3000;
SELECT region, SUM(quantity * UnitPrice) AS total_sales FROM SalesY24 GROUP BY region HAVING SUM(quantity * UnitPrice) > 3000;

#Write a query to get the maximum quantity sold for each product.
select productID, max(Quantity*UnitPrice) as maximum_quantity from salesY24 group by productID;

#Write a query to calculate the average quantity of products sold per region. 
select region, avg(Quantity*UnitPrice) as average_quantity from salesY24 group by region;

#Find the product IDs that have generated a total sales amount of more than 1000.
select productID, sum(Quantity*UnitPrice) as total_sales FROM SalesY24 GROUP BY productID HAVING SUM(quantity * UnitPrice) > 1000;

#Write a query to get the total number of sales (rows) made for each customer. 
select CustomerID, count(Quantity) as SalesRows from SalesY24 group by CustomerID;

#Find the products for which the average quantity sold is less than 5. 
select productID, avg(Quantity) as average_quantity from salesY24  GROUP BY productID HAVING avg(quantity) < 5;
 select ProductID, avg(Quantity) as avgQuantity from SalesY24 group by ProductID having avgQuantity<5;
 
 #Write a query to find the sum of total sales for each customer in each region. 
 select CustomerID, Region, Quantity*UnitPrice as total_Sale from SalesY24;
 
 #Write a query to calculate the total sales for each month. 
select month(salesAsDate) AS month, SUM(Quantity*UnitPrice) as total_Sale from SalesY24 GROUP BY month;
 
 