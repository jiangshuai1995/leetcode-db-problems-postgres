### Description

Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.

某网站包含两个表，Customers 表和 Orders 表。编写一个 SQL 查询，找出所有从不订购任何东西的客户。

Table: customers.
```
+----+-------+
| id | name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
```
Table: orders.
```
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
```
Using the above tables as example, return the following:
```
+-----------+
| customers |
+-----------+
| Henry     |
| Max       |
+-----------+
```


### Solution
```sql
select name as customers from 
    customers a left join orders b on a.id = b.customerid 
    where b.id is null;
```
### Result
```
 customers
-----------
 Henry
 Max
(2 行记录)
```
### Key

- 主要是join和where的顺序
- 注意不能写成b.id=null 