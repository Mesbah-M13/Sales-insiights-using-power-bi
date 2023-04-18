SELECT * FROM sales.customers;
SELECT COUNT(*)  FROM sales.customers;
SELECT * FROM sales.transactions where sales_amount <= 0;
SELECT * FROM sales.transactions WHERE market_code="Mark001";
SELECT COUNT(*) FROM sales.transactions WHERE market_code="Mark001";
SELECT distinct(transactions.currency) FROM sales.transactions;
SELECT COUNT(*) FROM sales.transactions WHERE transactions.currency = 'INR\r';
SELECT COUNT(*) FROM sales.transactions WHERE transactions.currency = 'INR';
SELECT * FROM sales.transactions WHERE transactions.currency = 'USD\r' or transactions.currency = 'USD';
# currency 'INR' 'INR\r' 'USD' 'USD\r' 

# For Dates
SELECT sales.transactions.*,sales.date.* FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date where sales.date.year = 2020;
 SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
 INNER JOIN sales.date ON sales.transactions.order_date=
 sales.date.date where sales.date.year = 2018;
SELECT sum(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date 
= sales.date.date where sales.date.year = 2020
and sales.transactions.market_code ="Mark001";
SELECT distinct product_code from sales.transactions
where market_code="Mark001";

# for markets
SELECT * FROM sales.markets;
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 
and transactions.currency="INR\r" or transactions.currency="USD\r";

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and 
 date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");