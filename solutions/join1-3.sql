/*
1-Find the salesperson and customer who reside in the same city. 
Return Salesman, cust_name and city.
*/

SELECT s.salesman_name, ct.cust_name, s.city FROM salesman s, customer ct WHERE ct.city = s.city;

/*
2-Find those orders where the order amount exists between 500 and 2000. 
Return ord_no, purch_amt, cust_name, city.
*/

SELECT o.purch_amt, ct.cust_name, ct.city FROM orders o JOIN customer ct ON (ct.customer_id = o.customer_id)
WHERE purch_amt <= 500 AND purch_amt <= 2000;

/*
3-Find the salesperson(s) and the customer(s) he represents. 
Return Customer Name, city, Salesman, commission.
*/

SELECT ct.cust_name, ct.city, s.salesman_name, s.comission FROM customer ct 
JOIN salesman s ON s.salesman_id = ct.salesman_id;