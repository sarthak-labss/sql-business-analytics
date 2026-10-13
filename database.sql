CREATE DATABASE business_analytics;

USE business_analytics;
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    City VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Order_Date DATE,
    Quantity INT,

    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID),

    FOREIGN KEY (Product_ID)
        REFERENCES Products(Product_ID)
);

-- Insert customers

INSERT INTO Customers
(Customer_ID, Customer_Name, City, Email)
VALUES
(1, 'Rahul Sharma', 'Jaipur', 'rahul@gmail.com'),
(2, 'Priya Singh', 'Delhi', 'priya@gmail.com'),
(3, 'Aman Gupta', 'Mumbai', 'aman@gmail.com'),
(4, 'Neha Verma', 'Jaipur', 'neha@gmail.com'),
(5, 'Rohit Mehta', 'Delhi', 'rohit@gmail.com'),
(6, 'Ananya Jain', 'Mumbai', 'ananya@gmail.com'),
(7, 'Vivek Kumar', 'Jaipur', 'vivek@gmail.com'),
(8, 'Isha Sharma', 'Delhi', 'isha@gmail.com'),
(9, 'Arjun Singh', 'Mumbai', 'arjun@gmail.com'),
(10, 'Simran Kaur', 'Jaipur', 'simran@gmail.com');


-- Insert products

INSERT INTO Products
(Product_ID, Product_Name, Category, Price)
VALUES
(101, 'Laptop', 'Electronics', 55000.00),
(102, 'Mouse', 'Electronics', 800.00),
(103, 'Keyboard', 'Electronics', 1500.00),
(104, 'Monitor', 'Electronics', 12000.00),
(105, 'Headphones', 'Accessories', 2500.00),
(106, 'Webcam', 'Accessories', 3500.00),
(107, 'Printer', 'Electronics', 15000.00),
(108, 'USB Drive', 'Accessories', 700.00);


-- Insert orders

INSERT INTO Orders
(Order_ID, Customer_ID, Product_ID, Order_Date, Quantity)
VALUES
(1001, 1, 101, '2026-08-01', 1),
(1002, 2, 102, '2026-08-01', 2),
(1003, 3, 103, '2026-08-02', 1),
(1004, 4, 104, '2026-08-02', 1),
(1005, 5, 105, '2026-08-03', 2),
(1006, 6, 101, '2026-08-03', 1),
(1007, 7, 102, '2026-08-04', 5),
(1008, 8, 103, '2026-08-04', 2),
(1009, 9, 104, '2026-08-05', 2),
(1010, 10, 105, '2026-08-05', 3),
(1011, 1, 107, '2026-08-06', 1),
(1012, 2, 102, '2026-08-06', 4),
(1013, 7, 103, '2026-08-07', 3),
(1014, 8, 104, '2026-08-07', 1),
(1015, 9, 105, '2026-08-08', 2),
(1016, 3, 106, '2026-08-09', 2),
(1017, 4, 108, '2026-08-09', 4),
(1018, 6, 107, '2026-08-10', 1),
(1019, 5, 101, '2026-08-10', 1),
(1020, 10, 106, '2026-08-11', 2);