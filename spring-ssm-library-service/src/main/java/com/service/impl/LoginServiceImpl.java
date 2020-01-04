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

    @Override
    public Login logins(Login login) {
        return dao.logins(login);
    }

    @Override
    public void register(Login login) {
        dao.register(login);
    }
}
