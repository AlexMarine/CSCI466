Alex Marine
CSCI 466
Assignment 4
2/24/20

dayspa.sql

CREATE TABLE client (
ID char(9),
address varchar(20),
email varchar(20),
name varchar(20),
phone_number char(9),
primary key(ID));

CREATE TABLE bills (
ID char(9),
address varchar(20),
cost decimal(4,2),
time char(6),
primary key(ID),
foreign key(ID) references client(ID));

CREATE TABLE reminder (
ID char(9),
address varchar(20),
time char(6),
primary key(ID));

CREATE TABLE employee (
ID char(9),
address varchar(20),
email varchar(20),
name varchar(20),
phone_number char(9),
job_title varchar(10),
pay_rate decimal(4,2),
specialty varchar(10),
primary key(ID));

CREATE TABLE schedule (
ID char(9),
time char(6),
primary key(ID),
foreign key(ID) references employee(ID));

CREATE TABLE service (
ID char(9),
cost decimal(4,2),
primary key(ID),
foreign key(ID), references employee(ID));

CREATE TABLE hair (
ID char(9),
service varchar(10),
cost decimal(4,2),
primary key(ID),
primary key(service),
foreign key(service) references service());

CREATE TABLE makeup (
ID char(9),
service varchar(10),
cost decimal(4,2),
primary key(ID),
primary key(service),
foreign key(service) references service());

CREATE TABLE manicure (
ID char(9),
service varchar(10),
cost decimal(4,2),
primary key(ID),
primary key(service),
foreign key(service) references service());

CREATE TABLE massage (
ID char(9),
service varchar(10),
cost decimal(4,2),
primary key(ID),
primary key(service),
foreign key(service) references service());

CREATE TABLE wax (
ID char(9),
service varchar(10),
cost decimal(4,2),
primary key(ID),
primary key(service),
foreign key(service) references service());