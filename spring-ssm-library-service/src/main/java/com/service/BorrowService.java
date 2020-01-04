package com.service;

import com.entity.Borrow;

import java.util.List;

public interface BorrowService {
    List<Borrow> getAll(int pageNum, int pageSize);

}


