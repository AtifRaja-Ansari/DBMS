create database mydatadb;
use mydatadb;
create table Student ( id int primary key auto_increment, sname varchar(20) not null unique, sphone bigint(11) not null unique, semail varchar(20) not null unique, sadd varchar(50));
insert into Student values