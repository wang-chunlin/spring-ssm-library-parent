create table borrow(
bo_id int primary key auto_increment,
book_id int not null,
foreign key(book_id) references  books(book_id),
read_id int not null,
foreign key(read_id) references readers(read_id),
lendtime date not null,
returntime date not null
);
insert into borrow(book_id,read_id,lendtime, returntime) values(1,2,'2019-05-23','2019-06-23');