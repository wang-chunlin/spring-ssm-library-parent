package com.entity;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.util.Date;

@Data
public class Readers {
    private Integer readId;
    @NotBlank(message = "姓名不能为空")
    private String readName;
    private String readSex;
    private Integer readAge;
    private String readIdCard;
    private String readPhone;
    private Date readRegistertime;
    private Double deposit;
    private String remarks;
    private String photo;
}
