# Sales_Analysis
The sales insights data analysis project, is made by using visualizing tools like MySql and Power BI, to find out the decrease in sales of Atilq Hardware.

### Instructions to setup mysql on your local computer

1. Follow the steps in this video to install MySQL on your local computer https://www.youtube.com/watch?v=qBBXBZXKi0w
2. SQL database dump is in the sales_dump.sql file above. Download the `sales_dump.sql` file to your local computer and import it as per the instructions given in the video above.

## Power BI can be easily downloaded from the App Store 

## Instructions to download the MySQL Connector on your local computer

  Follow the steps in this video to install MySQL on your local computer https://www.youtube.com/watch?v=_Lk6EiLi5rY&t=8s

## Problem Statement

Atilq Hardware is a company that supplies computer hardware and peripherals to many clients they have this client called Excel stores across India and they supply all this equipment to them now ethnic Hardware has a head office in Delhi and then they have a lot of  regional offices throughout India now Bhavan Patel is a sales director for this company and he’s is facing a lot of challenges in this, The market is growing dynamically and then he’s facing issues in terms of  tracking the sales in this dynamically growing market and he is facing problem with the insights of his business so he has this Regional manager from North India, South India, and Central India, whenever he wants to get insights in these three regions we would call these people and on the phone, this local regional manager will give him some insights that this was the sales last quarter and we are going to grow by this much in the next quarter.
The sales director is seeing that the sales are declining but he is not getting a complete picture, he asked for numbers and he was getting numbers and he was getting more confused by that, he wants the answers in simplest terms, like if the sales numbers are declining maybe we can start some promotion offer or maybe we can engage customers in a more better way so that we can increase of ourselves so he is interested in getting a simple understandable digestible insights, just a dashboard that give powerful insights. 

## Purpose of the project:

To unlock sales insights that are not visible before for the sales team for decision support and automate them to reduce manual time spent in data gathering.

## Stakeholders:

•	Sales Director

•	Marketing Team

•	Customer Service team

•	Data and Analytics Team

•	IT

## END RESULT:

An automated dashboard providing quick and latest sales insights in order to support
Driven decision-making.

## SUCCESS CRITERIA:

•	Dashboard(s) uncovering sales order insights with the latest data available.
•	Sales team able to take better decisions and prove 10% cost savings of total spend.
•	Sales Analysts stop data gathering manually in order to save 20% of their business time and reinvest it value added activity.

### Data Analysis Using SQL

1. Show all customer records

    `SELECT * FROM customers;`

2. Show total number of customers

    `SELECT count(*) FROM customers;`

3. Show transactions for Chennai market (market code for chennai is Mark001

    `SELECT * FROM transactions where market_code='Mark001';`

4. Show distrinct product codes that were sold in chennai

    `SELECT distinct product_code FROM transactions where market_code='Mark001';`

5. Show transactions where currency is US dollars

    `SELECT * from transactions where currency="USD"`

6. Show transactions in 2020 join by date table

    `SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;`

7. Show total revenue in year 2020,

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";`
	
8. Show total revenue in year 2020, January Month,

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");`

9. Show total revenue in year 2020 in Chennai

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";`

Data Analysis Using Power BI
============================

1. Formula to create norm_sales_amount column

`= Table.AddColumn(#"Filtered Rows", "norm_amount", each if [currency] = "USD" or [currency] ="USD#(cr)" then [sales_amount]*75 else [sales_amount], type any)`

2. Formula to find the profit margin of different products

`= DIVIDE([Total Profit Margin],[Revenue],0)`

3. Formula to find the profit margin contributor percentage with respect to sales products, sales customers, and sales markets.

` = DIVIDE([Total Profit Margin],CALCULATE([Total Profit Margin],ALL('sales products'),ALL('sales customers'),ALL('sales markets')))`

4. Formula to find out the total revenue gained from the sales

`  = SUM('Sales transactions'[norm_sales_amount])`

5. Formula to find out the revenue contributor percentage with respect to sales products, sales customers, and sales markets.

` = DIVIDE([Revenue],CALCULATE([Revenue],ALL('sales products'),ALL('sales customers'),ALL('sales markets')))`

6. Formula for the last year's revenue

` = CALCULATE([Revenue],SAMEPERIODLASTYEAR('sales date'[date]))`

7. Formula for the series of Profit Target

` =  GENERATESERIES(-0.05, 0.15, 0.01)`

8. Formula for the profit target value

` = SELECTEDVALUE('Profit Target'[Profit Target])`

9. Formula for the target difference

` = [Profit Margin %]-'Profit Target'[Profit Target Value]`

These insights will help the sales director and stakeholders make informed decisions, identify trends, and monitor the performance of different regions and products.
## There are some points which can be considered on why the sales are declining on the basis of analysis

**Regional Performance:**

Analyzing the sales data by region can reveal that certain regions, such as North India, South India, or Central India, are experiencing a decline in sales. This could indicate specific market challenges or competition in those regions that are impacting Atilq Hardware's sales performance.

**Currency Fluctuations:**

The analysis indicates that transactions are conducted in different currencies, such as INR and USD. If there are significant currency fluctuations or unfavorable exchange rates, it could affect the pricing and purchasing decisions of customers, leading to declining sales.

**Seasonal Variations:**

Examining the sales trends over time, including monthly or quarterly performance, may reveal seasonal variations in sales. If there are consistent periods of lower sales during certain times of the year, it could be attributed to seasonal factors or market dynamics specific to the computer hardware industry.

**Product Mix:**

Analyzing the product codes and their corresponding sales can shed light on specific products that are experiencing a decline in demand. It is possible that certain products in Atilq Hardware's portfolio are becoming outdated, less popular, or facing strong competition, resulting in decreased sales overall.
