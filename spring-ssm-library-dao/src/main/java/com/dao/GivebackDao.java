package com.dao;

import com.entity.Giveback;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GivebackDao {
    //查询归还信息
    List<Giveback> getGiveback(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);

    //归还
//    void updateOverTime(@Param("bookId")int bookId);
    void updateBookNum(@Param("bookId")int bookId);
    void updateGiveback(@Param("bookId")int bookId);
}
