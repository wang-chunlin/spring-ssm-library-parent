create table readers(
     read_id int primary key auto_increment,
     read_name varchar(20) not null,
     read_sex varchar(5) not null,
     read_age int not null,
     read_idcard char(18) not null,
     read_phone varchar(20) not null,
     read_registertime date not null,
     deposit double not null,
     remarks varchar(20),
     photo varchar(50)
);
insert into readers(read_name,read_sex,read_age,read_idcard,read_phone,read_registertime,deposit,remarks,photo)
values('王春林','男',20,'445222199804023352','18475123530','2019-04-23',13.1,'你好怂','7.jpg');