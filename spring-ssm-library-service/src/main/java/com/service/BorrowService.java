package com.service;


import com.entity.Giveback;

import java.util.List;

public interface BorrowService {
    //查询借阅
    List<Giveback> getAll(int pageNum, int pageSize);

}


