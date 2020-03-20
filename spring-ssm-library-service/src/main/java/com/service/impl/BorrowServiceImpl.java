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
    /*查询借阅信息*/
    @Override
    public List<Borrow> getAll(int pageNum, int pageSize) {
        return borrowDao.getAll(pageNum,pageSize);
    }

    /*添加借阅信息*/
    @Transactional
    public void addInfo(Borrow borrow) {
        borrowDao.updateBorrow(borrow.getBookId());
        borrowDao.insertBottow(borrow);


    }



}
