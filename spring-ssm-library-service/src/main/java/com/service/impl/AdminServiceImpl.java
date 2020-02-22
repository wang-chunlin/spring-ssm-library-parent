package com.service.impl;

import com.dao.AdminDao;
import com.entity.Login;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao dao;


    @Override
    public Login getAdmins(String name) {
        return dao.getAdmins(name);
    }

    /*修改管理员信息*/
    @Override
    public Login updateAdmin(Login login) {
        dao.updateAdmin(login);
        return null;
    }
    /*获取改登录管理员的姓名*/
    @Override
    public Login getAdmin(String staName) {
        Login login = new Login();
        login.setStaName(staName);
        return dao.getAdmin(login);
    }


}
