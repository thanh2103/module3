create database store_management;

use store_management;

create table product(
	id int primary key auto_increment,
    name varchar(50),
    description varchar(200) null,
    price int null,
    stock int null
);

insert into product value(1,'lap','sdfs',12000000,34);

insert into product(name,description,price,stock) value('điện thoại','sfd',8000000,65);

insert into product(name,description,price,stock) value('lap',null,null,null);

select * from product;

select id,name,price from product;

select id,name,price from product where price<10000000;

set sql_safe_updates=0;
update product set price=13000000;
set sql_safe_updates=1;


update product set price=8000000 where id=3;

alter table product add barcode int null;

alter table product add barcode default('6 thang') ;
