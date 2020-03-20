package com.dao;

import com.entity.Giveback;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GivebackDao {
    //查询归还信息
    List<Giveback> getGiveback(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);

    // 添加归还图书信息
    void insertGiveback(Giveback giveback);
    //修改归还相关信息
    void updateBookNum(@Param("bookId")int bookId);
    void updateGiveback(@Param("bookId")int bookId,@Param("readId")int readId);
}
