CREATE DATABASE ecommerce_sales;
USE ecommerce_sales;
SELECT COUNT(*) FROM orders;

SELECT * FROM orders WHERE Product = 'Printer';
SELECT * FROM orders WHERE OrderStatus = 'Delivered';
SELECT * FROM orders WHERE TotalPrice > 1000;
SELECT Product, TotalPrice FROM orders ORDER BY TotalPrice DESC;
SELECT Product,
SUM(TotalPrice) AS TotalSales
FROM orders
GROUP BY Product
ORDER BY TotalSales DESC;

SELECT Product,
AVG(UnitPrice) AS AveragePrice
FROM orders
GROUP BY Product;

SELECT OrderStatus,
COUNT(*) AS TotalOrders
FROM orders
GROUP BY OrderStatus;

SELECT CouponCode,
COUNT(*) AS TotalUsage
FROM orders
GROUP BY CouponCode;