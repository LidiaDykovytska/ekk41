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
price decimal (5,2) not null,
);

CREATE TABLE genre (
id int not null primary key,
name varchar (40) not null,
description varchar (200)
);

CREATE TABLE pub_house (
id int not null primary key,
name varchar (40) not null
);

CREATE TABLE series (
id int not null primary key,
name varchar (40)
);

CREATE TABLE author(
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null,
full_name varchar (40),
birth_date date,
country varchar (40)
);

CREATE TABLE basket(
id int not null primary key,
order_id int not null,
book_id int not null,
number int not null
);

CREATE TABLE orders (
id int not null primary key,
customer_id int not null,
employee_id int not null,
parcel_number varchar(10),
ordertime datetime not null
);

CREATE TABLE customer (
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null
);

CREATE TABLE employee (
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null,
address varchar (40)
);

alter table books add constraint FK_books_genre foreign key (genre_id) references genre(id)

alter table books add constraint FK_books_pub_house foreign key (pub_house_id) references pub_house(id)

alter table books add constraint FK_books_series foreign key (series_id) references series(id)

alter table books add constraint FK_books_author foreign key (author_id) references author(id)

alter table books add constraint FK_books_basket foreign key (id) references basket(id);

alter table orders add constraint FK_orders_customer foreign key (customer_id) references customer(id);

alter table orders add constraint FK_orders_employee foreign key (employee_id) references employee(id);

alter table basket add constraint FK_basket_orders foreign key (order_id) references orders(id);

insert into author
values('1','���������','����','��������� ����','1802-06-24','�������');
insert into author
values('2','���������','�����','��������� ��������� �����','1799-06-06','����');
insert into author
values('3','ʳ�','�������','ʳ� �������','1934-10-18','����');
insert into author
values('4','����� ���','̳����', '����� ��� �������� ̳����','1890-09-18','������ �������');
insert into author
values('5','�����','�����','����� ������� ����� �����','1895-05-22','������ �������');
insert into author
values('6','����','����','���� ����','1828-02-08','�������');
insert into author
values('7','���','�������','��� ����������� �������','1828-08-28','����');
insert into author
values('8','����','��������','���� ������� ��������','1889-06-11','����');
insert into author
values('9','�����','�����','����� ������������� �����','1895-10-03','����');
insert into author
values('10','����','�������','���� ���������� �������','1888-11-24','���');
insert into author
values('11','������','�������','������ ����������� �������','1883-01-10','����')

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

insert into series (id, name)
values('1','���� ����');
insert into series (id, name)
values('2','������-�������');
insert into series (id, name)
values('3','�������� �������');
insert into series (id, name)
values('4','˳�������� ���''����');
insert into series (id, name)
values('5','��������� ������');
insert into series (id, name)
values('6','�������� �������');
insert into series (id, name)
values('7','����� ����');
insert into series (id, name)
values('8','������ �����');
insert into series (id, name)
values('9','����� ������� � ������ ���');
insert into series (id, name)
values('10','Pocket Book');
insert into series (id, name)
values('11','����� �� �������');

insert into customer (id, first_name, last_name)
values('1', '�����', '������');
insert into customer (id, first_name, last_name)
values('2', '��������', '��������');
insert into customer (id, first_name, last_name)
values('3', '��������', '����');
insert into customer (id, first_name, last_name)
values('4', '�������', '���������');
insert into customer (id, first_name, last_name)
values('5', '��������', '���������')

insert into employee (id, first_name, last_name, address)
values('1', '��������', '������', '���.˳���, 30');
insert into employee (id, first_name, last_name, address)
values('2', '�������', '�����', '���.�������, 14');
insert into employee (id, first_name, last_name, address)
values('3', '˳����', '�����', '���.������, 20');
insert into employee (id, first_name, last_name, address)
values('4', '����', '����', '���.���������, 124');
insert into employee (id, first_name, last_name, address)
values('5', '���������', '�����', '���.������, 223');
insert into employee (id, first_name, last_name, address)
values('6', '������', '���', '���.������, 200')

insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('2', '1', '1', '1�-1', '2018-05-13 10:34:09');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('3', '1', '2', '2�-2', '2018-05-13 12:44:19');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('4', '2', '3', '3�-3', '2018-05-13 14:47:12');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('5', '3', '3', '4�-4', '2018-05-13 14:57:54');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('6', '4', '4', '5�-5', '2018-05-13 16:02:23');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('7', '5', '5', '6�-6', '2018-05-13 17:34:35');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('8', '6', '1', '7�-7', '2018-05-14 09:19:57');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('9', '1', '3', '8�-8', '2018-05-14 14:25:54');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('10', '2', '1', '9�-9', '2018-05-14 16:54:12')

insert into basket (id, order_id, book_id, number)
values('1', '2', '1', '20');
insert into basket (id, order_id, book_id, number)
values('2', '2', '3', '30');
insert into basket (id, order_id, book_id, number)
values('3', '3', '4', '20');
insert into basket (id, order_id, book_id, number)
values('4', '3', '6', '20');
insert into basket (id, order_id, book_id, number)
values('5', '4', '8', '40');
insert into basket (id, order_id, book_id, number)
values('6', '4', '9', '30');
insert into basket (id, order_id, book_id, number)
values('7', '5', '1', '20');
insert into basket (id, order_id, book_id, number)
values('8', '5', '3', '20');
insert into basket (id, order_id, book_id, number)
values('9', '5', '11', '20');
insert into basket (id, order_id, book_id, number)
values('10', '6', '13', '20');
insert into basket (id, order_id, book_id, number)
values('11', '6', '16', '25');
insert into basket (id, order_id, book_id, number)
values('12', '7', '17', '35');
insert into basket (id, order_id, book_id, number)
values('13', '7', '18', '35');
insert into basket (id, order_id, book_id, number)
values('14', '8', '20', '23');
insert into basket (id, order_id, book_id, number)
values('15', '8', '22', '22');
insert into basket (id, order_id, book_id, number)
values('16', '9', '23', '20');
insert into basket (id, order_id, book_id, number)
values('17', '9', '24', '29');
insert into basket (id, order_id, book_id, number)
values('18', '9', '25', '35');
insert into basket (id, order_id, book_id, number)
values('19', '10', '27', '60');
insert into basket (id, order_id, book_id, number)
values('20', '10', '28', '34');
insert into basket (id, order_id, book_id, number)
values('21', '10', '30', '35')


insert into books (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('1', '1', '4', '1', '3', '��� ���������', '72.25');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('3', '2', '5', '2', '2', '������ ����', '62.67');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('4', '2', '10', '3', '4', '̳���� �������', '46.45');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('6', '3', '2', '4', '5', '�� ���� ��������� � �����', '63.87');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('8', '3', '2', '5', '6', 'ϳ�������� �����', '58.99');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('9', '4', '3', '5', '1', '�������� �����������', '64.75');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('11', '4', '3', '5', '7', '������ ��������', '83.15');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('13', '4', '3', '6', '8', '����� ���� ������������', '68.90');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('16', '5', '3', '7', '9', '����� ����� �������� ��� �������', '85.65');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('17', '6', '4', '8', '1', 'ĳ�� ������� ������', '77.86');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('18', '6', '4', '9', '1', '20 ����� ��� �� �����', '85.50');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('20', '6', '4', '10', '1', '�������� �����', '69.90');

insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('23', '7', '10', '5', '1', '���� �������', '82.95');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('24', '7', '6', '10', '1', '�������', '68.25');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('25', '8', '7', '8', '1', '����� ����� ���� �������� ', '73.65');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('27', '9', '7', '12', '11', '³��� � �����', '69.99');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('28', '10', '9', '5', '1', '�� ��������� ����������� � ��������� �����', '57.35');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('30', '11', '8', '13', '1', '������� ������ ��� ������� �������', '67.83');
