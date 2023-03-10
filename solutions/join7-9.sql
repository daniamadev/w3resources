/*
7-Join the tables salesman, customer and orders so that the same column of each table 
appears once and only the relational rows are returned.
*/

SELECT * FROM salesman 
NATURAL JOIN customer
NATURAL JOIN orders;

/*
8-Display the customer name, customer city, grade, salesman, salesman city. 
The results should be sorted by ascending customer_id.
*/

SELECT ct.cust_name, ct.city, ct.grade, s.salesman_name, s.city FROM customer ct
JOIN salesman s ON s.salesman_id = ct.salesman_id ORDER BY ct.customer_id ASC;

/*
9-Find those customers with a grade less than 300. 
Return cust_name, customer city, grade, Salesman, salesmancity. 
The result should be ordered by ascending customer_id.
*/

SELECT ct.cust_name, ct.city, ct.grade, s.salesman_name, s.city FROM customer ct
JOIN salesman s ON s.salesman_id = ct.salesman_id
WHERE grade < 300
ORDER BY ct.customer_id ASC;


