package com.service;

import com.entity.Books;
import com.entity.Sort;


import java.awt.print.Book;
import java.util.List;

public interface BooksService {
    //图书查询
    List<Books> getAll(int pageNum, int pageSize);
    //添加图书
    void insert(Books books);
    //删除图书
    void delete(int bookId);
    //修改图书
    void update(Books books);

    Books get(int bookId);
    //书名查询
    List<Books> getBookName(int pageNum, int pageSize,String bookName);
    //类型查询
    List<Books> getBookType(int pageNum, int pageSize,int sortId);
}
