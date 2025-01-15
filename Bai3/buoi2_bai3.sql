create database qltknganhang;
use qltknganhang;

create table khachhang(
	id int primary key auto_increment,
    ten varchar(50)
);

create table taikhoan(
	id int primary key auto_increment,
    sodu decimal,
    khachhang_id int unique,
    foreign key (khachhang_id) references khachhang(id)
);

