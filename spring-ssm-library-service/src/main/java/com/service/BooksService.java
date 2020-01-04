package com.service;

import com.entity.Books;
import com.entity.Sort;


import java.awt.print.Book;
import java.util.List;

public interface BooksService {
    List<Books> getAll(int pageNum, int pageSize);
    void insert(Books books);
    void delete(int bookId);
    void update(Books books);

    Books get(int bookId);
    //书名查询
    List<Books> getBookName(int pageNum, int pageSize,String bookName);

    List<Books> getBookType(int pageNum, int pageSize,int sortId);
}
