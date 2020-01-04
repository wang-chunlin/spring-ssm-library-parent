 create table books(
 book_id int auto_increment primary key,
 book_name varchar(20) not null,
 author varchar(20) not null,
 translator varchar(20) not null,
 press varchar(20) not null,
 presstime date not null,
 sort_id int ,
 foreign key(sort_id) references sort(sort_id),
 total int not null,
 surplus int not null,
 position varchar(20) not null,
 registertime date not null,
synopsis varchar(20)
 );

 insert into books(book_name,author,translator,press,presstime,sort_id,total,surplus,position,registertime,synopsis) values('三国演义','老问','翁顺','新华出版社','2015-10-12',1,10,5,'第三柜三层','2019-03-12','safdf');