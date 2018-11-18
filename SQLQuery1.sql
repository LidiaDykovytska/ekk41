CREATE DATABASE bookstore
go

use bookstore


CREATE TABLE books (
id int not null primary key,
author_id int not null,
genre_id int not null,
pub_house_id int not null,
series_id int not null,
title varchar( 40) not null,
price decimal not null,
);

CREATE TABLE genre (
id int not null primary key,
name varchar (40) not null,
description varchar (200) not null
);

CREATE TABLE pub_house (
id int not null primary key,
name varchar (40) not null
);

CREATE TABLE series (
id int not null primary key,
name varchar (40) not null,
);

CREATE TABLE author(
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null,
full_name varchar (40) not null,
birth_date date not null,
country varchar (40) not null
);

CREATE TABLE basket(
id int not null primary key,
order_id int not null,
book_id int not null
);

CREATE TABLE orders (
id int not null primary key,
customer_id int not null,
employee_id int not null,
ordertime datetime not null
);

CREATE TABLE customer (
id int not null primary key,
name varchar (40) not null
);

CREATE TABLE employee (
id int not null primary key,
name varchar (40) not null
);

alter table books add constraint FK_books_genre foreign key (genre_id) references genre(id)

alter table books add constraint FK_books_pub_house foreign key (pub_house_id) references pub_house(id)

alter table books add constraint FK_books_series foreign key (series_id) references series(id)

alter table books add constraint FK_books_author foreign key (author_id) references author(id)

alter table books add constraint FK_books_basket foreign key (id) references basket(id);

alter table orders add constraint FK_orders_customer foreign key (customer_id) references customer(id);

alter table orders add constraint FK_orders_employee foreign key (employee_id) references employee(id);

alter table basket add constraint FK_basket_orders foreign key (order_id) references orders(id);

insert into author (id, first_name, last_name, full_name, birth_date, country)
values('1','���������','����','��������� ����','1802-05-02','�������');

delete from author
where id = 1

insert into author
values('1','���������','����','��������� ����','1802-06-24','�������')



insert into pub_house (id, name)
values('1','�����-�����');
insert into pub_house (id, name)
values('2','������-�������');
insert into pub_house (id, name)
values('3','������ ���');
insert into pub_house (id, name)
values('4','���');
insert into pub_house (id, name)
values('5','�����');
insert into pub_house (id, name)
values('6','������������');
insert into pub_house (id, name)
values('7','���� ѳ������� �������');
insert into pub_house (id, name)
values('8','������� ���');
insert into pub_house (id, name)
values('9','�����');
insert into pub_house (id, name)
values('10','������ ���������');
insert into pub_house (id, name)
values('11','в�');
insert into pub_house (id, name)
values('12','���������');
insert into pub_house (id, name)
values('13','���')

insert into genre (id, name, description)
values('2','���������� �� ������','�� ��������� ��������� ���������, ������ �������� ����������� ���, ������� �� ������������, ���������');
insert into genre (id, name, description)
values('3','��������','г������ ����� ������ �������� � ���� ������������ ����� �������, ���''����� � ��������');
insert into genre (id, name, description)
values('4','�������','����, ������ ����� ����� ������� ������������ ������ � ��������������� ���� ����������� ���������, ������� �������� �����������');
insert into genre (id, name, description)
values('5','����� � �����','г������ ���-������� (��������) �����, � ����� ������ ���������� � ��������, � ������� ���������, �� ���� �� ��������������� ���������� ����');
insert into genre (id, name, description)
values('6','������','����������� �������� ��� �������� �����, ������ �� ���������, ��� �������� �� �����, �� ��������� ������ ��������� � ����''������� ����� �� ������');
insert into genre (id, name, description)
values('7','�����','��������-������� �������� ���������, � ��� ���� ��������������� � ���������� �� ����������� ����� ���� ��� ������ ���� ���������');
insert into genre (id, name, description)
values('8','������ ���������','˳��������, ������� ������������� ����� ��� ��� ����');
insert into genre (id, name, description)
values('9','���-�����','��������� ���������, � ��� � ��������� ������������ ��� ��䳿 � ������ ����� � ����� ����� �� �����');
insert into genre (id, name, description)
values('10','�����','˳������, ������, ���-������ ���, ��������� ���������, � ����� �������� ����� ��䳿 � ������ ���������');
insert into genre (id, name, description)
values('11','��������� ������������ �����','� ��������, ����� � ������������� ������� ��������� ������������� ����������� ��������� ����� � ��� ��������� ������� ������������� �������������� � �������� ����������� ����������')
