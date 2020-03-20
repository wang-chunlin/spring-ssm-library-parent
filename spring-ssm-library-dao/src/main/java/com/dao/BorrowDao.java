package com.dao;

import com.entity.Books;
import com.entity.Borrow;
import com.entity.Giveback;
import com.entity.Readers;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BorrowDao {
    //查询借阅图书信息
    List<Borrow> getAll(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);

    //添加借阅信息
    void insertBottow(Borrow borrow);
    void updateBorrow(@Param("bookId") int bookId);

}
