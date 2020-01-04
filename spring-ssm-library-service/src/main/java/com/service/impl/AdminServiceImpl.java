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


    @Override
    public Login updateAdmin(Login login) {
        dao.updateAdmin(login);
        return null;
    }

    @Override
    public Login getAdmin(String staName) {
        Login login = new Login();
        login.setStaName(staName);
        return dao.getAdmin(login);
    }

//    @Override
//    public void deleteAdmin(int staId) {
//        dao.deleteAdmin(staId);
//    }


}
