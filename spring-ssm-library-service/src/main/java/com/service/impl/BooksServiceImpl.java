package com.service.impl;

import com.dao.BooksDao;
import com.entity.Books;
import com.entity.Sort;
import com.service.BooksService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Slf4j
public class BooksServiceImpl implements BooksService {
   @Autowired
   private BooksDao dao;
    @Override
    public List<Books> getAll(int pageNum, int pageSize) {
       log.info("------log getall-----");
       return dao.getAll(pageNum,pageSize);
    }

    @Override
    public void insert(Books books) {
        dao.insert(books);
    }

    @Override
    @Transactional
    public void delete(int bookId) {
        dao.delete(bookId);
    }

    @Override
    public void update(Books books) {
        dao.update(books);
    }

    @Override
    public Books get(int bookId) {
        Books books = new Books();
        books.setBookId(bookId);
        return dao.get(books);
    }

    @Override
    public List<Books> getBookName(int pageNum,int pageSize,String bookName) {
        return dao.getBookName(pageNum,pageSize,bookName);
    }

    @Override
    public List<Books> getBookType(int pageNum, int pageSize,int sortId) {
        return dao.getBookType(pageNum,pageSize,sortId);
    }


}
