package com.service.impl;

import com.dao.AdminDao;
import com.entity.Login;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.rmi.runtime.Log;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao dao;

    /*查询信息*/
    @Override
    public Login getAdmins(String name) {
        return dao.getAdmins(name);
    }

    /*修改管理员密码*/
    @Override
    public Login updatePassword(Login login) {
        dao.updatePassword(login);
        return null;
    }
    /*获取该登录管理员的姓名*/
    @Override
    public Login getAdmin(String staName) {
        Login login = new Login();
        login.setStaName(staName);
        return dao.getAdmin(staName);
    }
    /*修改管理员信息*/
    @Override
    public Login updateAdmin(Login login) {
        dao.updateAdmin(login);
        return null;
    }




}
