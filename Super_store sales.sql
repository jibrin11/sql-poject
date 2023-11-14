---Top-Selling Product Categories by Total Sales:
SELECT Category, SUM(Sales) AS TotalSales
FROM [jibrin Sample - Superstore]
GROUP BY Category
ORDER BY TotalSales DESC;

---Customers with the Highest Order Values:

SELECT Customer_Name, SUM(Sales) AS TotalSales
FROM [jibrin Sample - Superstore]
GROUP BY Customer_Name
ORDER BY TotalSales DESC;

---Average Discount and Its Impact on Profitability:
SELECT AVG(Discount) AS AvgDiscount, AVG(Profit) AS AvgProfit
FROM [jibrin Sample - Superstore];

--Cost-Effective Shipping Mode in Terms of Profit:
SELECT Ship_Mode, AVG(Profit) AS AvgProfit
FROM [jibrin Sample - Superstore]
GROUP BY Ship_Mode
ORDER BY AvgProfit DESC;


----Product Sub-Categories Resulting in Loss:
SELECT Sub_Category, AVG(Profit) AS AvgProfit
FROM [jibrin Sample - Superstore]
GROUP BY Sub_Category
HAVING AVG(Profit) < 0;

----Low Sales or Profitability in Specific Geographic Regions:
SELECT Region, AVG(Sales) AS AvgSales, AVG(Profit) AS AvgProfit
FROM [jibrin Sample - Superstore]
GROUP BY Region;


---Overall Profitability of the Business:
SELECT SUM(Profit) AS TotalProfit
FROM [jibrin Sample - Superstore]

---Average Order Processing Time:
SELECT AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgOrderProcessingTime
FROM [jibrin Sample - Superstore];

---Year-over-Year Sales Growth and Profitability:
SELECT
    YEAR([Order_Date]) AS OrderYear,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM
    [jibrin Sample - Superstore]
GROUP BY
    YEAR([Order_Date])
ORDER BY
    OrderYear;

	---What is the total profit for all the orders placed in the 'Consumer' segment in the 'South' region?"
	SELECT SUM(Profit) AS Totalprofit
FROM [jibrin Sample - Superstore]
WHERE Segment = 'Consumer' AND Region = 'South';


---What is the total sales for all the orders placed in the 'Consumer' segment in the 'South' region?"
	SELECT SUM(Sales) AS Totalsales
FROM [jibrin Sample - Superstore]
WHERE Segment = 'Consumer' AND Region = 'South';













