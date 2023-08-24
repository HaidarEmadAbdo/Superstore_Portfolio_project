<img src="https://www.nbc.com/sites/nbcunbc/files/files/styles/640x360/public/images/2017/3/24/Superstore-S2-AltAboutImage-1920x1080-KO.jpg?itok=vpUxjouq" width="100%" alt="Superstore cast">

# **Superstore_Portfolio_project**

## **Introduction**
### The following project is a case study of a superstore that includes studying the relationship between sales and profits in detail to derive insights from this relationship and provide advice that helps in the development of the work of this store. 
### In addition to studying the products that cause profit or loss for this store to submit proposals to the management regarding them. 


## **Some of the business questions to answer will be:**
### What is the relationship between sales and profits?
### Is it the rebate policy that brings profits to the company or vice versa?
### Is there an increase in the profits of the store over time or vice versa?
### Which customers bring the most profits to the store and what sets them apart from others?
### Which products bring the highest profits to the store and what causes loss?


## **Data Source:**
### The dataset to be used is from: **Data Visualization with Tableau Certificate.**
### performance Data Quality & Timeliness:
### This dataset contains data points that includes information such as customer names, product names, order IDs + order dates, ship dates, sales, discounts, profits and profit ratios.
### Shwoing our raw data in SQL:
###

![1- showing raw data1](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/522e3ef7-d4d6-4b70-b6a0-ee8e82bafbe3) 
###
![2- showing raw data2](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/79b8b499-ce8d-489f-8fda-a892e4678b68)
###
###
### We are going to build "our_table" form our raw data:
we will delete the rows for the ship_date field values (2015) because there is a data only for the first 6 days in 2015,
and the columns that we are going to use are (category - city - customer_name - region - segment - ship_date - ship-mode - state -
sub_category - discount - profit - profit_ratio - sales)
###
### Showing our_table in SQL:
###
![3- showing data that we are going to use](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/5b8ae0c4-755b-4aaf-b93b-188c8ed992f9)
###
###
## Data Exploration
### Showing the superstore profits per year in SQL and Tableau:
###
![4- showing the profits for every year](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/e2a674bc-cb56-4394-b4a9-af4558276645)
###
![4- showing the profits for every year with tableau](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/6ba750de-adc3-4491-9328-b744f4716156)
### We can see that there is an increase in profits every year which is a good indicator .
###
###
### Showing the relationship between discounts and profits in SQL:
###
![5- showing the relationship between discounts and profits](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/20bbdbe9-e56a-4271-b66c-2a1ca4b439f3)
### <h3> We can see that in general there is a kind of the inverse relationship between profits and discount, and when the customers sell in zero discount may be they sell a little amount of product but if we sum it we see that they bring the big profits \$319890,<p style=“white-space: nowrap;”> and the sum profits of all the other sells is \$-34555.</p></h3>
### which mean that the superstore will loose without the zero discount sells. 
### 
### Showing the top 20 profit customers and their discounts ratios in SQL and Tableau:
###
![6- Showing the top 20 profit customers a and their discounts ratio](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/59857bb7-60b3-4d66-836c-a1866bffc825)
###
![6- Showing the top 20 profit customers a and their discounts ratio with tableau](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/cd0fcd27-497e-4125-829e-e553b8a92836)
### We note that the rate of discounts for each of them is as low as we expected.
### But we note that customer Adrian Barton followed by customer Harry Marie and customer Christopher Conant are the only ones on the list with a high discount rate.
###
### Showing the products that bring in the most profits, as well as the products that make the most losses, in SQL and Tableau:
###
![7- Showing the products that bring in the most profits, as well as the products that make the most losses](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/98e73ab2-0016-4462-9cf8-633df1bdef1e)
###
![7- Showing the products that bring in the most profits, as well as the products that make the most losses with tableau](https://github.com/HaidarEmadAbdo/Superstore_Portfolio_project/assets/139217562/5e41d86d-2812-4de4-be4b-0a1546b08751)
### We can see that the printer "Canon image CLASS 2200 Advanced Copier" comes with a high profits By a big margin from the rest.
### And the printer "Cubi fly cube X 3D Printer Double Head Print" brings the highest losses to the superstore and also by a large margin over the rest.
###
## Data Visualization
### Please visit: https://public.tableau.com/app/profile/haidar.abdo/viz/superstore_portfolio_project/Story1#1       
##                                             to see the full Tableau story.






