package com.dao;

import com.entity.Books;
import com.entity.Readers;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReadersDao {
    //查询读者信息
    List<Readers> getAll(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize);
   //添加读者信息
    void insert(Readers readers);
    //删除读者信息
    void delete(int readId);
    //修改读者信息
    void update(Readers readers);

    Readers getReader(Readers readers);
    //读者充值
    void investMoney(@Param("id") int id,@Param("money") double money);

    //读者姓名查询
    List<Readers> getReaderName(@Param("pageNum")int pageNum, @Param("pageSize")int pageSize, @Param("readName")String readName);
}
