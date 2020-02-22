package com.service.impl;

import com.dao.GivebackDao;
import com.entity.Giveback;
import com.service.GivebackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class GivebackServiceImpl implements GivebackService {
    @Autowired
    private GivebackDao givebackDao;
    /*查询归还信息*/
    @Override
    public List<Giveback> getGiveback(int pageNum, int pageSize) {
        return givebackDao.getGiveback(pageNum,pageSize);
    }
    /*添加归还信息*/
    @Transactional
    public void backBook(Giveback giveback){
        givebackDao.updateBookNum(giveback.getBookId());
        givebackDao.updateGiveback(giveback.getBookId());
    }
}
