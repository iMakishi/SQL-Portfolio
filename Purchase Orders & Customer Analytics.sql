/*How many orders were placed in January?*/

SELECT COUNT(orderID)
FROM JanSales;

/*How many of those orders were for an iPhone?*/

SELECT COUNT(orderID)
FROM JanSales
WHERE Product LIKE 'iPhone%';

/*Select the customer account numbers for all the orders that were placed in February.*/

SELECT acctnum
FROM BIT_DB.customers
INNER JOIN BIT_DB.FebSales
ON order_id = orderID;

/*Which product was the cheapest one sold in January, and what was the price? For this one, you are going to use the commands distinct and MIN(). Using 'SELECT distinct' will remove duplicate rows from your results. The MIN() command will allow you to select the smallest value from the price column. This is a hard one - see if you can do it, but don't be afraid to look at the hint or answer if you need to!*/

SELECT Product, price
FROM BIT_DB.JanSales
ORDER BY price asc
LIMIT 1;

/*What is the total revenue for each product sold in January? (Revenue can be calculated using the number of products sold and the price of the products).*/

SELECT Product, sum(Quantity) * price AS revenue
FROM BIT_DB.JanSales
GROUP BY Product;

/*Which products were sold in February at 548 Lincoln St, Seattle, WA 98101, how many of each were sold, and what was the total revenue?*/

SELECT Product, location, sum(Quantity) AS number_sold, sum(Quantity) * price AS revenue
FROM BIT_DB.FebSales
WHERE location = '548 Lincoln St, Seattle, WA 98101'
GROUP BY Product;

/*How many customers ordered more than 2 products at a time in February, and what was the average amount spent for those customers?*/

SELECT COUNT(customers.acctnum), AVG(Quantity * price) AS AVG_Spent
FROM BIT_DB.FebSales FebSales
LEFT JOIN BIT_DB.customers customers
ON FebSales.orderID = customers.order_id
WHERE FebSales.Quantity > 2;

/*List all the products sold in Los Angeles in February, and include how many of each were sold.*/

SELECT Product, SUM(quantity)
FROM BIT_DB.FebSales 
WHERE location like '%Los Angeles%'
GROUP BY Product;

/*Which locations in New York received at least 3 orders in January, and how many orders did they each receive? (Hint: use HAVING).*/

SELECT DISTINCT location, COUNT(orderID)
FROM BIT_DB.JanSales
WHERE location LIKE '%NY%'
GROUP BY location
HAVING COUNT(orderID) >= 3;

/*What was the average amount spent per account in February? (Hints: For this question, we want the average amount spent / number of accounts, not the amount spent by each account. To multiply, you can use the * symbol, and to divide, you can use the / symbol.)*/

SELECT SUM(Quantity * price)/COUNT(acctnum) AS AVG_amount_spent
FROM BIT_DB.FebSales FebSales
LEFT JOIN BIT_DB.customers Customers
ON FebSales.orderID = Customers.order_id
ORDER BY Customers.acctnum

