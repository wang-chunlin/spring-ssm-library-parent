package com.service;

import com.entity.Login;
import sun.rmi.runtime.Log;

public interface AdminService {
    //查询管理员信息
    Login getAdmins(String name);
    //修改密码
    Login updatePassword(Login login);
    //获取管理员姓名
    Login getAdmin(String staName);
    //修改管理员信息
    Login updateAdmin(Login login);

}
