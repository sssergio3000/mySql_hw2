create database wholesaleDB;

use wholesaleDB;

-- drop table suppliers;
create table suppliers (
id smallint unsigned auto_increment not null primary key,
name varchar(50) not null,
bank_Account bigint unsigned not null,
contact_person_name varchar(50),
address varchar(100),
responsible_person int,
foreign key forkey (responsible_person) references stuff(id) 
);

insert suppliers
(name, bank_Account, contact_person_name, address, responsible_person )
values 
('IBM', 11111111111111111111, 'sam smith', 'NY, 3 Avenue', 1),
('MS', 4444444444444444444, 'bil gates', 'LA, 5 Avenue', 1),
('google', 555555555555555555, 'will smith', 'NO, 10 Avenue', 2);


select * from suppliers;

create table stuff (
id int auto_increment not null primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
phone_num int unsigned not null UNIQUE,
tax_num int unsigned not null UNIQUE);

-- drop table stuff;

insert stuff 
(first_name, last_name, phone_num, tax_num)
values
('john', 'deer', 098765432, 0000000000),
('kurt', 'rassel', 098765431, 1111111111),
('robert', 'miles', 098735432, 2222222222);

-- select * from stuff;

-- alter table stuff AUTO_INCREMENT = 0;

-- TRUNCATE table  stuff;

CREATE TABLE customers (
id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(20) NOT NULL UNIQUE,
address VARCHAR(50) NOT NULL,
responsible_person int,
FOREIGN KEY fc_cusomers (responsible_person) REFERENCES stuff(id)
);
-- drop TABLE customers;

INSERT customers
(name, address, responsible_person)
VALUES 
('shop1', 'address1', 1),
('shop2', 'address2', 3),
('shop3', 'address3', 2),
('shop4', 'address4', 1);

select * from customers;

DELETE FROM customers
WHERE responsible_person = 1;














