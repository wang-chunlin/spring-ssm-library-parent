create table login(
    login_id int auto_increment primary key,
    login_name varchar(20) not null,
    login_pwd varchar(20) not null
);

insert into login(login_name, login_pwd) values('zhangsan','12345'),
                                                ('lisi','abcde');