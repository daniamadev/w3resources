/*
4-Find salespeople who received commissions of more than 12 percent from the company. 
Return Customer Name, customer city, Salesman, commission.
*/

SELECT ct.cust_name, ct.city, s.salesman_name, s.comission FROM salesman s
JOIN customer ct ON ct.salesman_id = s.salesman_id
WHERE comission > 0.12;

/*
5-Locate those salespeople who do not live in the same city where their customers 
live and have received a commission of more than 12% from the company. 
Return Customer Name, customer city, Salesman, salesman city, commission.
*/

SELECT ct.cust_name, ct.city, s.salesman_name, s.city, s.comission FROM salesman s, customer ct 
WHERE ct.city != s.city AND s.comission > 0.12;

/*
6-Find the details of an order. 
Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
*/

SELECT o.order_no, o.ord_date, o.purch_amt, ct.cust_name, ct.grade, s.salesman_name, s.comission 
FROM orders o JOIN customer ct ON ct.salesman_id = o.salesman_id JOIN salesman s ON s.salesman_id = o.salesman_id;
