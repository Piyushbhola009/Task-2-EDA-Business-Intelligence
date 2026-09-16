-- =====================================================
-- Internship Task 2
-- Exploratory Data Analysis & Business Intelligence
-- Name: Piyush Bhola
-- Date: 16 September 2026
-- =====================================================

USE internship_db;


-- Q1. Which products generate the highest total revenue?

SELECT Product,
       SUM(Total_Sales) AS Total_Revenue
FROM sales_data
GROUP BY Product
ORDER BY Total_Revenue DESC;


-- Q2. Which product categories generate the highest revenue?

SELECT Category,
       SUM(Total_Sales) AS Total_Revenue
FROM sales_data
GROUP BY Category
ORDER BY Total_Revenue DESC;


-- Q3. Which cities generate the highest revenue?

SELECT City,
       SUM(Total_Sales) AS Total_Revenue
FROM sales_data
GROUP BY City
ORDER BY Total_Revenue DESC;


-- Q4. What is the monthly revenue trend?

SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
       SUM(Total_Sales) AS Monthly_Revenue
FROM sales_data
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Month;


-- Q5. How does revenue differ by gender?

SELECT Gender,
       COUNT(DISTINCT Order_ID) AS Total_Orders,
       SUM(Total_Sales) AS Total_Revenue
FROM sales_data
GROUP BY Gender;


-- Q6. Who are the top 10 customers by revenue?

SELECT Customer_ID,
       Customer_Name,
       SUM(Total_Sales) AS Total_Revenue
FROM sales_data
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Revenue DESC
LIMIT 10;


-- Q7. Which products have the highest quantity sold?

SELECT Product,
       SUM(Quantity) AS Total_Quantity_Sold
FROM sales_data
GROUP BY Product
ORDER BY Total_Quantity_Sold DESC;