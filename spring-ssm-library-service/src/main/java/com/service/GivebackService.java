package com.service;

import com.entity.Giveback;

import java.util.List;

public interface GivebackService {
    //查询归还
    List<Giveback> getGiveback(int pageNum,int pageSize);
}
