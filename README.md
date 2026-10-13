# SQL Business Analytics

A MySQL-based business analytics project designed to analyze customer, product, and order data using SQL.

## 📌 Project Overview

This project analyzes sales data and generates useful business insights using SQL queries.

The analysis includes:

- Total revenue
- Revenue by product
- Revenue by customer
- Revenue by city
- Revenue by category
- Orders per customer
- Monthly revenue
- Best-selling products
- Average order value
- Highest-value order
- Customer distribution by city

## 🗄️ Database Structure

The project contains three tables:

### Customers
Stores customer information such as name, city, and email.

### Products
Stores product information including category and price.

### Orders
Stores customer orders, dates, products, and quantities.

```text
Customers
    │
    │ Customer_ID
    ▼
Orders
    ▲
    │ Product_ID
    │
Products

🛠️ Technologies Used
- MySQL
- SQL
- XAMPP
- VS Code
📊 Key Business Insights
- Total revenue: ₹295,100
- Highest-revenue product: Laptop
- Highest-revenue cities: Jaipur and Mumbai
- Highest-revenue category: Electronics
- Best-selling product by quantity: Mouse
- Average order value: ₹14,755
- Highest-value individual order: ₹55,000
📁 Project Files
File	Description
database.sql	Database, tables, and sample data
analysis.sql	Business analysis SQL queries
README.md	Project documentation


▶️ How to Run
1. Install XAMPP.
2. Start MySQL from XAMPP.
3. Open the project in VS Code.
4. Connect to MySQL using SQLTools.
5. Run database.sql.
6. Run queries from analysis.sql.
🎯 Purpose
This project demonstrates practical SQL skills including:
- Database design
- Table relationships
- Primary and foreign keys
- JOINs
- GROUP BY
- Aggregate functions
- ORDER BY
- Date functions
- Business analysis
👨‍💻 Author
Sarthak Sharma