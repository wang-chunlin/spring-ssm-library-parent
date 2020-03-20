package com.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Borrow {
    private Integer boId;
    private Integer bookId;
    private Integer readId;
    private Date lendtime;
    private String shifouReturn;
    private Books books;
    private Readers readers;
}
