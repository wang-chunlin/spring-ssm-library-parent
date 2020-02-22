package com.service.impl;

import com.dao.ReadersDao;
import com.entity.Books;
import com.entity.Readers;
import com.service.ReadersService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Slf4j
public class ReadersServiceImpl implements ReadersService {
    @Autowired
    private ReadersDao dao;

    @Override
    public List<Readers> getAll(int pageNum, int pageSize) {
        log.info("------log getall-----");
        return dao.getAll(pageNum,pageSize);
    }

    @Override
    public void insert(Readers readers){
        dao.insert(readers);
    }

    @Override
    public void delete(int readId) {
        dao.delete(readId);
    }

    @Override
    public void update(Readers readers) {
        dao.update(readers);
    }

    @Override
    public Readers getReader(int readId) {
        Readers readers = new Readers();
        readers.setReadId(readId);
        return dao.getReader(readers);
    }
    //    充值
    @Override
    public void investMoney(int id,double money) {
        dao.investMoney(id,money);
    }

    @Override
    public List<Readers> getReaderName(int pageNum, int pageSize, String readName) {
        return dao.getReaderName(pageNum,pageSize,readName);
    }



}
