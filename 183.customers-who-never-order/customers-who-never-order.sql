drop table if Exists customers;
drop table if Exists orders;
Create table customers (id int, name varchar(255));
Create table orders (id int, customerid int);
insert into customers (id, name) values ('1', 'Joe');
insert into customers (id, name) values ('2', 'Henry');
insert into customers (id, name) values ('3', 'Sam');
insert into customers (id, name) values ('4', 'Max');
insert into orders (id, customerid) values ('1', '3');
insert into orders (id, customerid) values ('2', '1');