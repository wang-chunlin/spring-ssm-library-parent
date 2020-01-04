package com.dao;

import com.entity.Books;
import com.entity.Borrow;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BorrowDao {
    List<Borrow> getAll(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);

    void insertBottow(Borrow bottow);
    void updateBorrow(@Param("bookId") int bookId);

}
