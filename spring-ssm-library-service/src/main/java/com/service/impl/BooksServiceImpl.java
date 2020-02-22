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
   /*查询图书信息*/
    @Override
    public List<Books> getAll(int pageNum, int pageSize) {
       log.info("------log getall-----");
       return dao.getAll(pageNum,pageSize);
    }

    /*添加图书信息*/
    @Override
    public void insert(Books books) {
        dao.insert(books);
    }

    /*删除图书信息*/
    @Override
    @Transactional
    public void delete(int bookId) {
        dao.delete(bookId);
    }

    /*修改图书信息*/
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

    /*根据图书名查询*/
    @Override
    public List<Books> getBookName(int pageNum,int pageSize,String bookName) {
        return dao.getBookName(pageNum,pageSize,bookName);
    }

    /*根据图书类型查询*/
    @Override
    public List<Books> getBookType(int pageNum, int pageSize,int sortId) {
        return dao.getBookType(pageNum,pageSize,sortId);
    }


}
