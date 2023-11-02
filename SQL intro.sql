-- find all products

-- find all products that cost $1400

-- find all products that cost $11.99 or $13.99

-- find all products that do NOT cost 11.99 - using NOT

-- find all products and sort them by price from greatest to least

-- find all employees who don't have a middle initial

-- find distinct product prices

-- find all employees whose first name starts with the letter ‘j’

-- find all Macbooks

-- find all products that are on sale

-- find the average price of all products

-- find all Geek Squad employees who don't have a middle initial

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest.

SELECT * FROM products;

SELECT Name, Price FROM products
WHERE Price = 1400.00;

SELECT Name, Price FROM products
WHERE Price = 11.99 OR Price = 13.99;

SELECT Name, Price FROM products
WHERE NOT Price = 11.99;

SELECT Name, Price FROM products
ORDER BY Price DESC;

SELECT * FROM employees
WHERE MiddleInitial IS NULL;

SELECT DISTINCT Price FROM products;

SELECT * FROM employees
WHERE FirstName LIKE 'j%';

SELECT * FROM products products 
WHERE Name LIKE 'mac%';

SELECT * FROM products
WHERE OnSale = 1;

SELECT AVG(Price) AS "Average Price" FROM products;

SELECT * FROM employees
WHERE Title LIKE "%geek%"
AND MiddleInitial IS NULL;

SELECT * FROM products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY Price;
