create database quanlysach;
use quanlysach;

create table sach(
	id int primary key auto_increment,
    ten varchar(50),
    gia decimal,
    tacgia_id int,
    nhanvien_id int,
    foreign key (tacgia_id) references tacgia(id),
    foreign key (nhanvien_id) references nhanvien(id)
);

create table tacgia(
	id int primary key auto_increment,
    ten varchar(50)
);

create table nhanvien(
	id int primary key auto_increment,
    ten varchar(50),
    diachi varchar(100)
);