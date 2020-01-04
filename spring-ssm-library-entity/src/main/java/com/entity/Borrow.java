package com.entity;

import lombok.Data;

import java.util.Date;
@Data
public class Borrow {
    private Integer boId;
    private Integer bookId;
    private Integer readId;
    private Date lendtime;
    private Date returntime;

}
