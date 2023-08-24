-- Showing our raw date
SELECT * FROM [dbo].[superstore_dataset];
/*
We are going to build "our_table" form our raw data(dbo.superstore_dataset), 
and we will delete the rows for the ship_date field values (2015) because there is a data only for the first 6 days in 2015,
and the columns that we are going to use are (category - city - customer_name - region - segment - ship_date - ship-mode - state -
sub_category - discount - profit - profit_ratio - sales)
*/
CREATE TABLE our_table
           (category nvarchar(50), city nvarchar(50), customer_name nvarchar(50), order_date date, order_id nvarchar(50), product_name nvarchar(max),
		    region nvarchar(50), segment nvarchar(50), ship_date date, ship_mode nvarchar(50), state nvarchar(50), sub_category nvarchar(50),
			discount float, profit float, profit_ratio float, sales money)  
INSERT INTO our_table
SELECT Category, City, Customer_Name, Order_Date, Order_Id, Product_Name, Region, Segment, Ship_Date, Ship_Mode, State , Sub_Category, 
       Discount, Profit, Profit_Ratio, Sales
FROM superstore_dataset
WHERE year(ship_date) != 2015

-- Showing our data that we are going to use
select * from our_table ORDER BY order_date

-- Showing the profits for every year.
SELECT YEAR(ship_date) AS Year , SUM(profit) AS total_profits FROM our_table
GROUP BY YEAR(ship_date)
ORDER BY total_profits
-- We can see that there is an increase in profits every year which is a good indicator .

-- Showing the relationship between discount and profits
SELECT CONCAT(CAST( discount * 100 AS decimal(10)),' %') AS discount , CAST(AVG(Profit_Ratio) AS decimal(10,2)) AS profit_ratio ,
       CONCAT(SUM(profit),' $') as total_profits FROM our_table
GROUP BY discount
ORDER BY SUM(profit) DESC
/* 
We can see that in general there is a kind of the inverse relationship between profits and discount, and when the customers sell in zero discount may be
they sell a little amount of product but if we sum it we see that they bring the big profits (319890 $) and the sum profits of all the other sells
is (-34,555$) which mean that the superstore will loose without the zero discount sells. 
*/

-- Showing the top 20 profit customers and their discounts ratios .
SELECT top 20 customer_name, SUM(profit) AS profits, CAST(AVG(discount) AS decimal(10,2)) AS discount_ratio,
              CAST(AVG(profit_ratio) AS decimal(10,2)) AS profit_ratio
FROM our_table
GROUP BY customer_name
ORDER BY profits DESC
/*
We note that the rate of discounts for each of them is as low as we expected.
But we note that customer Adrian Barton followed by customer Harry Marie and customer Christopher Conant
are the only ones on the list with a high discount rate.
*/

-- Showing the products that bring in the most profits, as well as the products that make the most losses
SELECT product_name , SUM(profit) as total_profits FROM our_table
GROUP BY product_name
ORDER BY total_profits DESC;
SELECT product_name , SUM(profit) as total_profits FROM our_table
GROUP BY product_name
ORDER BY total_profits;

-- We can see that the printer "Canon image CLASS 2200 Advanced Copier" comes with a high profits By a big margin from the rest.
-- And the printer "Cubi fly cube X 3D Printer Double Head Print" brings the highest losses to the superstore and also by a large margin over the rest.


                        /* Please visit: https://public.tableau.com/app/profile/haidar.abdo/viz/superstore_portfolio_project/Story1#1
                                    to see the dashboard story we created from the results of the above queries.*/



