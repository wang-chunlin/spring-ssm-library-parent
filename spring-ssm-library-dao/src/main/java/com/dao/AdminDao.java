package com.dao;

import com.entity.Login;

import java.util.List;

public interface AdminDao {
    //查询
    Login getAdmins(String name);

    //修改
    void updateAdmin(Login login);

    //删除
    void deleteAdmin(int staId);
    //
    Login getAdmin(Login login);





}
