package com.dao;

import com.entity.Login;

import java.util.List;

public interface AdminDao {
    //查询管理员信息
    Login getAdmins(String name);

    //修改管理员信息
    void updateAdmin(Login login);

    //删除管理员
    void deleteAdmin(int staId);

    //
    Login getAdmin(Login login);





}
