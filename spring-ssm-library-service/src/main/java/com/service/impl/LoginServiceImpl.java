package com.service.impl;

import com.dao.LoginDao;
import com.entity.Login;
import com.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao dao;
    /*登录*/
    @Override
    public Login logins(Login login) {
        return dao.logins(login);
    }
    /*注册*/
    @Override
    public void register(Login login) {
        dao.register(login);
    }
}
