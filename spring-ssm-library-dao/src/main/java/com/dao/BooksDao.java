package com.dao;

import com.entity.Books;
import com.entity.Sort;
import org.apache.ibatis.annotations.Param;

import java.awt.print.Book;
import java.util.List;

public interface BooksDao {
    //图书查询与分页
    List<Books> getAll(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);
    //图书添加
    void insert(Books books);
    //图书删除
    void delete(int bookId);
    //图书修改
    void update(Books books);

    //查询对象
    Books get(Books books);

    //图书名模糊查询
    List<Books> getBookName(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize,@Param("bookName")String bookName);

    //图书类型查询
    List<Books> getBookType(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize,@Param("sortId")int sortId);
}
