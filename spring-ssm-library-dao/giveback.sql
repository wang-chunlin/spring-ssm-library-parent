create table giveback(
                         gb_id int auto_increment primary key ,
                         book_id int not null,
                         foreign key(book_id) references  books(book_id),
                         read_id int not null,
                         foreign key(read_id) references readers(read_id),
                        lendtime date,
                         returntime date,
                         over_time date,
                         event_rent float,
                         rent_day int,
                         rent int,
                         state varchar(20),
                         breakage varchar(50),
                         shifou_return varchar(5) default '否'
);

insert into giveback(book_id,read_id,lendtime,returntime,event_rent,state,breakage,shifou_return)
values(1,1,'2019-06-30','2019-07-30','1.0','好','无','是'),
       (1,2,'2019-08-20','2019-09-20','1.0','好','无','是')