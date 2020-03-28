create database project;
use project;
create table user(
tel char(11) primary key,
name varchar(30) not null,
city varchar(30) null,
password varchar(15) not null,
comment varchar(30) default("这人非常懒，啥都没说"));

