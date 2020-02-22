package com.service;

import com.entity.Books;
import com.entity.Readers;

import java.util.List;

public interface ReadersService {
    //查询读者信息
    List<Readers> getAll(int pageNum , int pageSize);
    //添加读者信息
    void insert(Readers readers);
    //删除读者信息
    void delete(int readId);
    //修改读者信息
    void update(Readers readers);

    Readers getReader(int readId);
    //读者充值
    void investMoney(int id ,double money);
    //姓名查询
    List<Readers> getReaderName(int pageNum, int pageSize, String readName);
}
