package com.dao;

import com.entity.Readers;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReadersDao {
    List<Readers> getAll(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);
    void insert(Readers readers);
    void delete(int readId);
    void update(Readers readers);

    Readers getReader(Readers readers);
    //读者充值
    void investMoney(@Param("id") int id,@Param("money") double money);
}
