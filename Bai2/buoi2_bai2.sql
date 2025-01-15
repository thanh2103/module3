create database quanlydanhba;
use quanlydanhba;

create table nguoi(
	id int primary key auto_increment,
    ten varchar(50)
);

create table sodienthoai(
	id int primary key auto_increment,
    so varchar(13),
    nguoi_id int,
    foreign key (nguoi_id) references nguoi(id)
);

create table email(
	id int primary key auto_increment,
    diachiemail varchar(50),
    nguoi_id int,
    foreign key (nguoi_id) references nguoi(id)
);