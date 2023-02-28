# Basic Join
*These exercises explores basic concepts of NATURAL JOIN, INNER JOIN, LEFT JOIN AND RIGHT JOIN*

___

**It's important to emphasize that I don't own these datasets and exercises.**
You can check the source [at W3Resources](https://www.w3resource.com/sql-exercises/sql-joins-exercises.php)

___

For a better understanding of each challenge, you can see the tables bellow:

_Sample table: Salesman_

| salesman_id |    name    |   city   | commission  |
|-------------|------------|----------|-------------|
|        5001 | James Hoog | New York |       0.15  |
|        5002 | Nail Knite | Paris    |       0.13  |
|        5005 | Pit Alex   | London   |       0.11  |
|        5006 | Mc Lyon    | Paris    |       0.14  |
|        5007 | Paul Adam  | Rome     |       0.13  |
|        5003 | Lauson Hen | San Jose |       0.12  |

_Sample table: customer_

| customer_id |   cust_name    |    city    | grade | salesman_id |
|-------------|----------------|------------|-------|-------------|
|        3002 | Nick Rimando   | New York   |   100 |        5001 |
|        3007 | Brad Davis     | New York   |   200 |        5001 |
|        3005 | Graham Zusi    | California |   200 |        5002 |
|        3008 | Julian Green   | London     |   300 |        5002 |
|        3004 | Fabian Johnson | Paris      |   300 |        5006 |
|        3009 | Geoff Cameron  | Berlin     |   100 |        5003 |
|        3003 | Jozy Altidor   | Moscow     |   200 |        5007 |
|        3001 | Brad Guzan     | London     |       |        5005 |

_Sample table: orders_

|  ord_no  |  purch_amt |  ord_date |customer_id| salesman_id  |
|----------|------------|--------------|---------|------------|
| 70001    |   150.5    |   2012-10-05 | 3005    |     5002   |
| 70009    |   270.65   |   2012-09-10 | 3001    |     5005   |
| 70002    |   65.26    |   2012-10-05 | 3002    |     5001   |
| 70004    |   110.5    |   2012-08-17 | 3009    |     5003   |
| 70007    |   948.5    |   2012-09-10 | 3005    |     5002   |
| 70005    |   2400.6   |   2012-07-27 | 3007    |     5001   |
| 70008    |   5760     |   2012-09-10 | 3002    |     5001   |
| 70010    |   1983.43  |   2012-10-10 | 3004    |     5006   |
| 70003    |   2480.4   |   2012-10-10 | 3009    |     5003   |
| 70012    |   250.45   |   2012-06-27 | 3008    |     5002   |
| 70011    |   75.29    |   2012-08-17 | 3003    |     5007   |
| 70013    |   3045.6   |   2012-04-25 | 3002    |     5001   |


## INNER JOIN
1-Find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.


2-Find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.


3-Find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.


4-Find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission. 


5-Locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.


6-Find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.

7-Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned.

8-From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.

9-From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.

10-Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not. 

11-SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.

12-Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers. 

13-From the following tables write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount.

14-Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.

15-For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, create a report containing the customer name, city, order number, order date, and purchase amount

16-Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade.

17-Write a SQL query to combine each row of the salesman table with each row of the customer table.

18-Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.

19-Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.

20-Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.

21-From the following tables write a SQL query to select all rows from both participating tables as long as there is a match between pro_com and com_id.

22-Write a SQL query to display the item name, price, and company name of all the products.

23-From the following tables write a SQL query to calculate the average price of items of each company. Return average value and company name. 

24-From the following tables write a SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. Return average value and company name.

25-From the following tables write a SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name.

26-From the following tables write a SQL query to display all the data of employees including their department.

27-From the following tables write a SQL query to display the first and last names of each employee, as well as the department name and sanction amount.

28-From the following tables write a SQL query to find the departments with budgets more than Rs. 50000 and display the first name and last name of employees.

29-From the following tables write a SQL query to find the names of departments where more than two employees are employed. Return dpt_name.

