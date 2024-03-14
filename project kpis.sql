USE capstone_project;

SELECT * FROM countries_data;

SELECT product, ROUND(SUM(sales),2) as Total_sales FROM countries_data GROUP BY product;

SELECT segment, ROUND(SUM(profit),2) as Total_profit FROM countries_data GROUP BY segment;

SELECT Year, ROUND(SUM(sales),2) as Total_sales FROM countries_data GROUP BY Year;

SELECT country, ROUND(SUM(sales),2) as Total_sales FROM countries_data GROUP BY country;

SELECT ROUND(SUM(Profit),2) AS total_profit, ROUND(SUM(Sales),2) AS total_sales,
CASE
 WHEN `Month Number`  BETWEEN 1 AND 3 THEN "QTR1"
 WHEN `Month Number` BETWEEN 4 AND 6 THEN "QTR2"
 WHEN `Month Number`  BETWEEN 7 AND 9 THEN "QTR3"
 ELSE "QTR4"
 END AS Quarter
 FROM countries_data GROUP BY Quarter ORDER BY Quarter;
 
 SELECT country, ROUND(SUM(sales),2) AS Total_sales FROM countries_data
 GROUP BY country
 ORDER BY Total_sales DESC LIMIT 2;
 
 SELECT product, ROUND(SUM(sales),2) AS Total_sales FROM countries_data
 GROUP BY product
 ORDER BY Total_sales LIMIT 3;
 
 SELECT Product, ROUND(SUM(discounts),2) AS total_discount FROM countries_data
 GROUP BY product;
 
 SELECT segment, ROUND(SUM(sales),2) as Total_sales FROM countries_data GROUP BY segment;
 
 
 