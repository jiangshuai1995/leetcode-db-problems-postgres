### Description

The Employee table holds all employees. Every employee has an Id, and there is also a column for the department Id.
```
+----+-------+--------+--------------+
| id | name  | salary | departmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |
+----+-------+--------+--------------+
```
The Department table holds all departments of the company.
```
+----+----------+
| id | name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
```
Write a SQL query to find employees who earn the top three salaries in each of the department. For the above tables, your SQL query should return the following rows (order of rows does not matter).

编写一个 SQL 查询，找出每个部门获得前三高工资的所有员工。例如，根据上述给定的表，查询结果应返回：
```
+------------+----------+--------+
| department | employee | salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Randy    | 85000  |
| IT         | Joe      | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |
+------------+----------+--------+
```
Explanation:

In IT department, Max earns the highest salary, both Randy and Joe earn the second highest salary, and Will earns the third highest salary. There are only two employees in the Sales department, Henry earns the highest salary while Sam earns the second highest salary.

IT 部门中，Max 获得了最高的工资，Randy 和 Joe 都拿到了第二高的工资，Will 的工资排第三。销售部门（Sales）只有两名员工，Henry 的工资最高，Sam 的工资排第二。

### Solution
```sql
select a.name,a.salary,b.name  from employee a  left join department b on a.departmentid=b.id
where (departmentid,salary) in
(
    select distinct departmentId,salary from
        (select departmentId,salary,dense_rank() over(partition by  departmentId order by salary desc)
         as rank from employee) as tmp  where rank<4
);
```
### Result
```
 name  | salary | name
-------+--------+-------
 Will  |  70000 | IT
 Randy |  85000 | IT
 Max   |  90000 | IT
 Joe   |  85000 | IT
 Sam   |  60000 | Sales
 Henry |  80000 | Sales
(6 行记录)
```

### Key

- 使用rank函数创建临时表(tmp)找到前三工资
- 使用两字段的IN进行过滤