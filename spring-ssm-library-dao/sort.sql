 create table sort(
 sort_id int primary key auto_increment not null,
 sort_name varchar(10) not null
 );

 insert into sort(sort_name)
     values('历史名著'),
            ('文学经典'),
            ('演讲/口才'),
            ('心理学'),
            ('成功'),
            ('玄幻'),
            ('武侠'),
            ('科幻'),
            ('励志')