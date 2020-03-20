package com.service;


import com.entity.Borrow;
import com.entity.Giveback;

import java.util.List;

public interface BorrowService {
    //查询借阅
    List<Borrow> getAll(int pageNum, int pageSize);

}


