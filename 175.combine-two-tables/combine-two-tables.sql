drop table  IF EXISTS person;
drop table IF EXISTS address;
Create table person (personid int, firstname varchar(255), lastname varchar(255));
Create table address (addressid int, personid int, city varchar(255), state varchar(255));
insert into person (personid, lastname, firstname) values ('1', 'Wang', 'Allen');
insert into address (addressid, personid, city, state) values ('1', '2', 'New York City', 'New York');