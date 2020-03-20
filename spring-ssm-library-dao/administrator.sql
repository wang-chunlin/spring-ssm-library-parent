create table administrator(
    sta_id int primary key auto_increment not null,
    sta_name varchar(20) not null,
    sta_sex varchar(5) not null,
    nation varchar(5) not null,
    birthday date not null,
    idcard int(18) not null,
    address varchar(50) not null,
    phone varchar(20) not null,
    graduate varchar(20) not null,
    hiredate data not null,
    password varchar(20) not null
)