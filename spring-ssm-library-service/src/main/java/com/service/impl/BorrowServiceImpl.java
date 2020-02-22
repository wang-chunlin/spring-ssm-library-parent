package com.service.impl;

import com.dao.BorrowDao;
import com.entity.Borrow;
import com.entity.Giveback;
import com.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BorrowServiceImpl implements BorrowService {

    @Autowired
    private BorrowDao borrowDao;
    @Override
    public List<Giveback> getAll(int pageNum, int pageSize) {
        return borrowDao.getAll(pageNum,pageSize);
    }


    @Transactional
    public void addInfo(Giveback giveback) {
        borrowDao.updateBorrow(giveback.getBookId());
        borrowDao.insertBottow(giveback);


    }



}
