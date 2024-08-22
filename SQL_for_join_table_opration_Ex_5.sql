create database e_5;
use e_5;

create table members(members_id int auto_increment,name varchar(100),primary key (members_id));

create table comm(comm_id int auto_increment, name varchar(100),primary key(comm_id));

insert into members (name) value('john'), ('jawe'), ('mary'), ('david'),('amelia');

insert into comm(name) value('john'),('mary'), ('amelia'), ('joe');

select *from members;


select *from comm;


-- inner join example

select
m.members_id,
m.name as members,
c.comm_id,
c.name as comm
from
members m
inner join comm c on c.name =m.name;


-- left outer join

select m.members_id, m.name as members,c.comm_id, c.name as comm
from 
members m
left join comm c using(name) where c.comm_id is null;


-- right join claus 


select
m.members_id,
m.name as members,
c.comm_id,
c.name as comm
from
members m
RIGHT JOIN comm c USING(name)
WHERE m.members_id IS NULL;


