package com.service;

import com.entity.Giveback;

import java.util.List;

public interface GivebackService {
    List<Giveback> getGiveback(int pageNum,int pageSize);
}
