package com.dao;

import com.entity.Login;

import java.util.List;

public interface AdminDao {
    //查询管理员信息
    Login getAdmins(String name);

    //修改管理员密码
    void updatePassword(Login login);
    //获取管理员姓名
    Login getAdmin(String name);

    //修改管理员信息
    void updateAdmin(Login login);



}
