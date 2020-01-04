package com.dao;

import com.entity.Giveback;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GivebackDao {
    //查询归还信息
    List<Giveback> getGiveback(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);

    //归还
    void insertGiveback(Giveback giveback);
    void updateGiveback(@Param("bookId")int bookId);
    void deleteGiveback(@Param("bookId")int bookId);
}
