### Description

Write a SQL query to find all duplicate emails in a table named Person.

编写一个 SQL 查询，查找 Person 表中所有重复的电子邮箱。
```
+----+---------+
| id | email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
```
For example, your query should return the following for the above table:

根据以上输入，你的查询应返回以下结果：
```
+---------+
| email   |
+---------+
| a@b.com |
+---------+
```
Note: All emails are in lowercase.

### Solution
```sql
select Email from Person group by Email HAVING COUNT(EMAIL)>1;
```

### Result
```
  email
---------
 a@b.com
(1 行记录)
```
### Key

- HAVING
- 注意order by， where，having 的顺序