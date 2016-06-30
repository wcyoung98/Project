create database project;
use project;
create table member (
	id varchar(50) primary key,
	pw varchar(20),
	enable int(1)
);
create table wordbook (
	english varchar(100),
	korean varchar(100),
	know int(1)
);