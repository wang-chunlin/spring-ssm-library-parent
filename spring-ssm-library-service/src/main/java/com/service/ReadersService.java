package com.service;

import com.entity.Readers;

import java.util.List;

public interface ReadersService {
    List<Readers> getAll(int pageNum , int pageSize);
    void insert(Readers readers);

    void delete(int readId);
    void update(Readers readers);

    Readers getReader(int readId);

    //读者充值
    void investMoney(int id ,double money);
}
