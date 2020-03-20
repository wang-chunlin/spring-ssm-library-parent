 create table books(
 book_id int auto_increment primary key not null,
 book_name varchar(20) not null,
 author varchar(20) not null,
 translator varchar(20) not null,
 press varchar(20) not null,
 presstime date not null,
 sort_id int not null,
 foreign key(sort_id) references sort(sort_id),
 total int not null,
 surplus int not null,
 position varchar(20) not null,
 registertime date not null,
 synopsis varchar(100)
 );

 insert into books(book_name, author, translator, press, presstime, sort_id, total, surplus, position, registertime, synopsis)
values ('三国演义','罗贯中','w','人民出版社','1999-1-2',1,10,10,'第一柜第五层','2019-10-10','东汉末年，山河动荡，刘汉王朝气数将尽。……'),
       ('水浒传','施耐庵','w','中国电力出版社','2000-2-28',1,5,5,'第一柜第五层','2019-10-10','水浒传即描写未朝徽宗时皇帝昏庸、奸臣当道、官府腐败、贪官污吏...'),
       ('西游记','吴承恩','w','人民出版社','2005-3-8',1,10,10,'第一柜第五层','2019-10-10','在遥远的古代，东方傲来国有一座花果山，山上有一块仙石吸收日月精华，..'),
       ('青楼梦','曹雪芹','w','新华出版社','2000-10-23',1,10,10,'第一柜第五层','2019-10-10','《红楼梦》是我国古代四大名著之一，属章回体长篇小说，成书于1784年（清乾隆帝四十... '),
       ('战争与和平','列夫·尼古拉耶维奇·托尔斯泰','w','新华出版社','2008-12-5',2,5,5,'第一柜第四层','2019-10-10','是俄国作家列夫·尼古拉耶维奇·托尔斯泰创作的长篇小说，也是其代表作。')