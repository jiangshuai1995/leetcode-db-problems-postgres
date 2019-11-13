### Description

Table: person

| Column Name | Type    |
|-------------|---------|
| personid    | int     |
| firstname   | varchar |
| lastname    | varchar |

personid is the primary key column for this table.
Table: address

| Column Name | Type    |
|-------------|---------|
| addressid   | int     |
| personid    | int     |
| city        | varchar |
| state       | varchar |

addressid is the primary key column for this table.
 

Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:

firstname, lastname, city, state

### Solution

```sql
select a.firstname,a.lastname,b.city,b.state from person as a left join address as b on a.personid=b.personid
```