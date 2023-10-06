--zad 1:3
SELECT* FROM sales.customers 
  
 SELECT customer_id AS [indentyfikator klienta], first_name AS [imiê klienta], last_name AS [nazwisko klienta] FROM sales.customers 

SELECT order_id, item_id, quantity, list_price, quantity*list_price AS [items value], discount,
(1-discount*quantity)*list_price AS [items value after discount]
FROM sales.order_items


--4
SELECT  * FROM sales.orders WHERE customer_id = 42
--5
SELECT * FROM sales.order_items
SELECT * FROM sales.order_items WHERE (list_price < 200 AND discount = 0.2)
--6
select * from production.stocks WHERE (store_id = 1) AND (quantity = 0)
--7
SELECT * from production.products WHERE product_name LIKE '%women%' or  product_name LIKE '%ladies%'
--8
SELECT product_name, list_price FROM production.products WHERE product_name LIKE '__e%' 


--9


SELECT TOP 10 * FROM production.products ORDER BY list_price DESC

--10

SELECT product_id, product_name, A.category_id, category_name FROM production.products AS A JOIN production.categories ON
production.categories.category_id = A.category_id

--11
SELECT product_id, product_name, A.category_id, category_name FROM production.products AS A JOIN production.categories ON
production.categories.category_id = A.category_id WHERE category_name LIKE '%cycles%'

--12


SELECT A.first_name, A.last_name, B.order_date FROM sales.customers AS A JOIN sales.orders AS B on A.customer_id = B.customer_id
--13

SELECT COUNT(*) from sales.customers WHERE email LIKE '%gmail%'

--14
SELECT category_id, AVG(list_price), COUNT(*) as [no. of products] FROM production.products  GROUP BY  category_id



