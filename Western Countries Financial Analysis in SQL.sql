USE capstone_project;
SELECT * FROM countries_data;

-- product wise sales --
SELECT Product,SUM(sales) AS Total_Sales FROM countries_data
GROUP BY Product;

-- segment wise profit --
SELECT Segment, SUM(Profit) AS Total_Profit FROM countries_data
GROUP BY Segment;

-- yearly sales --
SELECT Year, SUM(Sales) AS Total_sales FROM countries_data
GROUP BY Year;

-- country wise sales --
SELECT Country, SUM(Sales) AS Total_Sales FROM countries_data
GROUP BY Country;

-- profit and sales by quarter --
SELECT SUM(Profit) AS Total_Profit, SUM(Sales) AS Total_Sales,
CASE 
WHEN Month_Number BETWEEN 1 AND 3 THEN "Quarter1"
WHEN Month_Number BETWEEN 4 AND 6 THEN "Quarter2"
WHEN Month_Number BETWEEN 7 AND 9 THEN "Quarter3"
ELSE "Quarter4" END AS Quarter
FROM countries_data GROUP BY Quarter
ORDER BY Quarter;

-- yearly profit --
SELECT Year, SUM(Profit) AS Total_Profit FROM countries_data 
GROUP BY Year;

-- top 2 countries --
SELECT Country, SUM(Sales) AS Total_Sales FROM countries_data
GROUP BY Country ORDER BY Total_Sales DESC LIMIT 2;

-- bottom 3 products --
SELECT Product, SUM(Sales) AS Total_Sales FROM countries_data
GROUP BY Product ORDER BY Total_Sales LIMIT 3;

-- product wise discount --
SELECT Product, SUM(Discounts) AS Total_Discounts FROM countries_data
GROUP BY Product;

-- no. of units sold year over year --
SELECT Year, SUM(units_sold) AS Total_Units_Sold 
FROM countries_data GROUP BY Year;

-- segment wise product sales --
SELECT Segment, Product, SUM(Sales) AS Total_Sales 
FROM countries_data GROUP BY Segment, Product
ORDER BY Segment, Total_Sales desc, Product;

-- segment wise product wise profit --
SELECT Segment, Product, SUM(Profit) AS Total_Profit
FROM countries_data GROUP BY Segment, Product
ORDER BY Segment, Total_Profit desc, Product;

