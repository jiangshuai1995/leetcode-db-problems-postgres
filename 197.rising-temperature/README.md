### Description

Given a Weather table, write a SQL query to find all dates' Ids with higher temperature compared to its previous (yesterday's) dates.
给定一个 Weather 表，编写一个 SQL 查询，来查找与之前（昨天的）日期相比温度更高的所有日期的 Id。

```
+---------+------------------+------------------+
| Id(INT) | RecordDate(DATE) | Temperature(INT) |
+---------+------------------+------------------+
|       1 |       2015-01-01 |               10 |
|       2 |       2015-01-02 |               25 |
|       3 |       2015-01-03 |               20 |
|       4 |       2015-01-04 |               30 |
+---------+------------------+------------------+
```
For example, return the following Ids for the above Weather table:
```
+----+
| Id |
+----+
|  2 |
|  4 |
+----+
```
### Solution

- 通过ID计算
    ```sql
    select b.id from 
        Weather a left join Weather b  on a.id=b.id -1  
            where a.temperature < b.temperature;
    ```

- 通过日期计算
    ```sql
    select b.id from
        Weather a left join Weather b  on a.recorddate=b.recorddate-interval '1 days' 
            where a.temperature < b.temperature;
    ```
### Result


### Key

- left join
- postgresql中日期的计算方式
