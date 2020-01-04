package com.entity;

import lombok.Data;

import javax.validation.constraints.*;

import java.util.Date;
@Data
public class Books {
    private int bookId;
    @NotEmpty(message = "**书名不能为空**")
    private String bookName;
    @NotEmpty(message = "**作者不能为空**")
    private String author;
    @NotEmpty(message = "**译者不能为空**")
    private String translator;
    @NotEmpty(message = "**出版社不能为空**")
    private String press;

    @NotNull(message = "**出版时间不能为空**")
    private Date presstime;
    @NotNull(message = "**不能为空**")
    private Integer sortId;
    @NotNull(message = "**不能为空**")
    @Min(value = 1,message = "**藏书总量必须大于1**")
    private Integer total;
    @NotNull(message = "**不能为空**")
    @Min(value = 1,message = "**藏书总量必须大于1**")
    private Integer surplus;
    @NotEmpty(message = "**存放位置不能为空**")
    private String position;
    @NotNull(message = "**登记日期不能为空**")
    private Date registertime;
//    @NotEmpty(message = "**简介不能为空**")
    private String synopsis;
}
