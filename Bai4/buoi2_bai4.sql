create database qlgvhs;
use qlgvhs;

create table giaovien(
	id int primary key auto_increment,
    ten varchar(50)
);

create table hocsinh(
	id int primary key auto_increment,
    ten varchar(50),
    giaovien_id int,
    foreign key (giaovien_id) references giaovien(id)
);

drop database qlgvhs;
