package com.dao;

import com.entity.Books;
import com.entity.Borrow;
import com.entity.Giveback;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BorrowDao {
    List<Giveback> getAll(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);

    void insertBottow(Giveback giveback);
    void updateBorrow(@Param("bookId") int bookId);

}
