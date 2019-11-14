### Description

Write a SQL query to find all numbers that appear at least three times consecutively.

编写一个 SQL 查询，查找所有至少连续出现三次的数字。

```
+----+-----+
| Id | Num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+
```
For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

例如，给定上面的 Logs 表， 1 是唯一连续出现至少三次的数字。
```
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
```

### Solution

- join
```sql
select distinct  a.num  as ConsecutiveNums from Logs a left join Logs b on a.Id = b.Id-1 left join Logs c on a.id = c.id-2 where a.num = b.num AND a.num= c.num;
```

- where
```sql
select distinct a.num as ConsecutiveNums  from logs a,logs b,logs c where a.id=b.id-1 and a.id=c.id-2 and a.num=b.num and a.num=c.num;
```

有人说执行join会更快，但实际执行时间基本无差别

### Result
```
 consecutivenums
-----------------
               1
(1 行记录)
```


### Note

由于题目的限制可能会遗漏distinct,可以再添加两条记录进行测试