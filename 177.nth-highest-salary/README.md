### Description

Write a SQL query to get the nth highest salary from the Employee table.
编写一个 SQL 查询，获取 Employee 表中第 n 高的薪水（Salary）。
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the nth highest salary where n = 2 is 200. If there is no nth highest salary, then the query should return null.
例如上述 Employee 表，n = 2 时，应返回第二高的薪水 200。如果不存在第 n 高的薪水，那么查询应返回 null。

+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+


### Solution
```sql
CREATE or REPLACE FUNCTION getNthHighestSalary(N int) RETURNS int
   AS 'select (SELECT DISTINCT Salary FROM Employee order by 1 offset $1-1 limit 1)'
LANGUAGE SQL; 
```

### Result
```
leetcode=# select getNthHighestSalary(3);
 getnthhighestsalary
---------------------
                 300
(1 行记录)
```

### Key
- function