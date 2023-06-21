SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date 
where date.year = 2020
and transactions.currency = "INR\r" or transactions.currency = "USD\r";
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date 
where date.year = 2020 and date.month_name = "January"
and transactions.currency = "INR\r" or transactions.currency = "USD\r";
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date 
where date.year = 2019
and transactions.currency = "INR\r" or transactions.currency = "USD\r";
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date = date.date 
where date.year = 2020
and transactions.market_code = "Mark001";