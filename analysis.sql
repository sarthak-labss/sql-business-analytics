-- 1. Total Revenue
SELECT
    SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Products p
    ON o.Product_ID = p.Product_ID;


-- 2. Revenue by Product
SELECT
    p.Product_Name,
    SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Products p
    ON o.Product_ID = p.Product_ID
GROUP BY p.Product_ID, p.Product_Name
ORDER BY Total_Revenue DESC;


-- 3. Revenue by Customer
SELECT
    c.Customer_Name,
    SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Customers c
    ON o.Customer_ID = c.Customer_ID
JOIN Products p
    ON o.Product_ID = p.Product_ID
GROUP BY c.Customer_ID, c.Customer_Name
ORDER BY Total_Revenue DESC;


-- 4. Revenue by City
SELECT
    c.City,
    SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Customers c
    ON o.Customer_ID = c.Customer_ID
JOIN Products p
    ON o.Product_ID = p.Product_ID
GROUP BY c.City
ORDER BY Total_Revenue DESC;


-- 5. Orders per Customer
SELECT
    c.Customer_Name,
    COUNT(o.Order_ID) AS Total_Orders
FROM Orders o
JOIN Customers c
    ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_ID, c.Customer_Name
ORDER BY Total_Orders DESC;


-- 6. Revenue by Category
SELECT
    p.Category,
    SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Products p
    ON o.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Total_Revenue DESC;


-- 7. Monthly Revenue
SELECT
    MONTHNAME(o.Order_Date) AS Month,
    SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Products p
    ON o.Product_ID = p.Product_ID
GROUP BY MONTH(o.Order_Date), MONTHNAME(o.Order_Date)
ORDER BY MONTH(o.Order_Date);


-- 8. Best-Selling Products by Quantity
SELECT
    p.Product_Name,
    SUM(o.Quantity) AS Units_Sold
FROM Orders o
JOIN Products p
    ON o.Product_ID = p.Product_ID
GROUP BY p.Product_ID, p.Product_Name
ORDER BY Units_Sold DESC;


-- 9. Average Order Value
SELECT
    ROUND(
        SUM(p.Price * o.Quantity) / COUNT(DISTINCT o.Order_ID),
        2
    ) AS Average_Order_Value
FROM Orders o
JOIN Products p
    ON o.Product_ID = p.Product_ID;


-- 10. Highest-Value Order
SELECT
    o.Order_ID,
    c.Customer_Name,
    p.Product_Name,
    o.Quantity,
    (p.Price * o.Quantity) AS Order_Revenue
FROM Orders o
JOIN Customers c
    ON o.Customer_ID = c.Customer_ID
JOIN Products p
    ON o.Product_ID = p.Product_ID
ORDER BY Order_Revenue DESC
LIMIT 1;


-- 11. Customer Distribution by City
SELECT
    City,
    COUNT(Customer_ID) AS Total_Customers
FROM Customers
GROUP BY City
ORDER BY Total_Customers DESC;