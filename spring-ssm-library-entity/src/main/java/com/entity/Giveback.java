package com.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Giveback {
    private Integer gbId;
    private Integer bookId;
    private Integer readId;
    private Date overTime;
    private float eventRent;
    private Integer rentDay;
    private Integer rent;
    private String state;
    private String breakage;
    private Borrow borrow;

}
