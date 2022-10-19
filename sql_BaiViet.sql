create database c0722g1;

create table thanh_vien(
id int auto_increment primary key,
ten varchar(100) not null,
mat_ma varchar(100) default "Ma" 
);

create table chu_de(
ma_chu_de int auto_increment primary key,
ten_chu_de varchar(200)
);

create table bai_viet(
ma_bv int auto_increment primary key,
ten_bv varchar(200),
noi_dung longtext, 
ma_chu_de int,
ma_tv int,
ma_bv_cha int,
FOREIGN KEY (ma_chu_de) REFERENCES chu_de(ma_chu_de),
FOREIGN KEY (ma_tv) REFERENCES thanh_vien(id),
FOREIGN KEY (ma_bv_cha) REFERENCES bai_viet(ma_bv)
);

