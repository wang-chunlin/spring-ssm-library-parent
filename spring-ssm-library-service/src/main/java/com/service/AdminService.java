package com.service;

import com.entity.Login;

public interface AdminService {
    //查询
    Login getAdmins(String name);
    //修改
    Login updateAdmin(Login login);
//    //删除
//    void deleteAdmin(int staId);
//
    Login getAdmin(String staName);
}
