create table giveback(
    gb_id int auto_increment primary key ,
    book_id int not null,
    foreign key(book_id) references  books(book_id),
    read_id int not null,
    foreign key(read_id) references readers(read_id),
    over_time date,
    event_rent float,
    rent_day int,
    rent int,
    state varchar(20),
    breakage varchar(50)
)