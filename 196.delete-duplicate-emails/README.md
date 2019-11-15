### Description

Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.

编写一个 SQL 查询，来删除 Person 表中所有重复的电子邮箱，重复的邮箱里只保留 Id 最小 的那个。

```
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
```
Id is the primary key column for this table.
For example, after running your query, the above Person table should have the following rows:
```
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
```
Note:

Your output is the whole Person table after executing your sql. Use delete statement.


### Solution

```sql
delete from Person a using person b where a.Email= b.Email AND a.id>b.id;
```

### Result

### Key

- postgresql不能直接使用delete a from a,b。 需要使用using关键字
- 只是简单的笛卡儿积 不要想得过于复杂，但是在数据量大时可能执行极为缓慢

[TODO] 不同场景下的最优解

