drop table IF Exists employee;
Create table employee (id int, name varchar(255), salary int, managerid int);
insert into employee (id, name, salary, managerid) values ('1', 'Joe', '70000', '3');
insert into employee (id, name, salary, managerid) values ('2', 'Henry', '80000', '4');
insert into employee (id, name, salary, managerid) values ('3', 'Sam', '60000', null);
insert into employee (id, name, salary, managerid) values ('4', 'Max', '90000', null);