### Description

The Employee table holds all employees. Every employee has an Id, a salary, and there is also a column for the department Id.
```
+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |
+----+-------+--------+--------------+
```
The Department table holds all departments of the company.
```
+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
```
Write a SQL query to find employees who have the highest salary in each of the departments. For the above tables, your SQL query should return the following rows (order of rows does not matter).

编写一个 SQL 查询，找出每个部门工资最高的员工。例如，根据上述给定的表格，Max 在 IT 部门有最高工资，Henry 在 Sales 部门有最高工资。

```
+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+
```
Explanation:

Max and Jim both have the highest salary in the IT department and Henry has the highest salary in the Sales department.

### Solution 
```sql
select a.name,a.salary,b.name  from employee a  left join department b on a.departmentid=b.id
where (salary,departmentid) in
(select max(salary) as salary ,c.departmentid from employee c group by c.departmentid);
```
### Result
```sql
 name  | salary | name
-------+--------+-------
 Max   |  90000 | IT
 Jim   |  90000 | IT
 Henry |  80000 | Sales
(3 行记录)
```
### Key

- max
- group by
- 两个字段使用 IN

### NOTE

- leetcode网站上该题存在一定问题，题目和SQL不符
