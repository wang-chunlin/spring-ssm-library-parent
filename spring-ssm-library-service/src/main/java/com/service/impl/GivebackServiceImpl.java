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
    @Override
    public List<Giveback> getGiveback(int pageNum, int pageSize) {
        return givebackDao.getGiveback(pageNum,pageSize);
    }

    @Transactional
    public void backBook(Giveback giveback){
        givebackDao.updateBookNum(giveback.getBookId());
        givebackDao.updateGiveback(giveback.getBookId());
//        givebackDao.updateOverTime(giveback.getBookId());
    }
}
