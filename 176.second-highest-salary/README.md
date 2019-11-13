### Description

Write a SQL query to get the second highest salary from the Employee table.

编写一个 SQL 查询，获取 Employee 表中第二高的薪水（Salary）
```
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
```
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.

例如上述 Employee 表，SQL查询应该返回 200 作为第二高的薪水。如果不存在第二高的薪水，那么查询应返回 null。
```
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
```
### Solution
```sql
select (SELECT DISTINCT Salary FROM Employee order by 1 offset 1 limit 1) as "SecondHighestSalary";
```

### Result
```
 SecondHighestSalary
---------------------
                 200
(1 行记录)
```

### Key

- DISTINCT
- order by
- offset
- limit

### Note

可以使用nullif函数
```sql
select NULLIF((SELECT DISTINCT Salary FROM Employee order by 1 offset 3 limit 1),NULL) as "SecondHighestSalary";
```

也可以考虑使用窗口函数（window function）解决