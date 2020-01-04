package com.entity;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
public class Login {
    private Integer staId;
    @NotBlank(message = "姓名不能为空")
    private String staName;
    private String staSex;
    private String nation;
    private String birthday;
    private String  idcard;
    //    private Integer nativeplace;
    private String address;
    //    @Pattern(regexp="^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$", message="请输入正确的号码格式")
    private String phone;
    private String graduate;
    private String hiredate;
    @NotBlank(message="{密码不能为空}")
//    @Pattern(regexp="/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/", message="密码必须是6~10位数字和字母的组合")
    private String password;
    
}
