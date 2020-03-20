create table borrow(
    bo_Id int auto_increment primary key not null ,
     book_id int not null,
     foreign key(book_id) references  books(book_id),
     read_id int not null,
     foreign key(read_id) references readers(read_id),
    lendtime date not null,
     shifou_return varchar(5) default '否'
)