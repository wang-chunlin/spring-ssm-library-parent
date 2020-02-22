package com.service;

import com.entity.Borrow;
import com.entity.Giveback;

import java.util.List;

public interface BorrowService {
    List<Giveback> getAll(int pageNum, int pageSize);

}


