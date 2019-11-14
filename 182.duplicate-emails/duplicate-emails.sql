drop table If Exists person;
Create table  person (id int, email varchar(255));
insert into person (id, email) values ('1', 'a@b.com');
insert into person (id, email) values ('2', 'c@d.com');
insert into person (id, email) values ('3', 'a@b.com');