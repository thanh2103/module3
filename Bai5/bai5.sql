create database qldoibong;
use qldoibong;

create table huanluyenvien(
	id int primary key auto_increment,
    ten varchar(50) not null,
    ngaysinh datetime
);

create table doi(
	id int primary key auto_increment,
    ten varchar(50) not null,
    huanluyenvien_id int,
    foreign key (huanluyenvien_id) references huanluyenvien(id)
);

create table cauthu(
	id int primary key auto_increment,
    ten varchar(50) not null,
    ngaysinh datetime,
    doi_id int,
    foreign key (doi_id) references doi(id)
);

create table vitri_cauthu(
	id int primary key auto_increment,
    vitri varchar(50) not null
);

create table trandau(
	id int primary key auto_increment,
    doi_a int,
    doi_b int,
    ngay_gio_dau datetime,
     foreign key (doi_a) references doi(id),
     foreign key (doi_b) references doi(id)
);

create table cauthu_vitri(
	cauthu_id int,
    vitri_id int,
    primary key(cauthu_id, vitri_id),
    foreign key (cauthu_id) references cauthu(id),
    foreign key (vitri_id) references vitri_cauthu(id)
);

create table trandau_cauthu(
	trandau_id int, 
    cauthu_id int,
    primary key(trandau_id, cauthu_id),
    foreign key (cauthu_id) references cauthu(id),
    foreign key (trandau_id) references trandau(id)
);