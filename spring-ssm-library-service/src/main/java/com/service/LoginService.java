package com.service;

import com.entity.Login;

public interface LoginService {
    //登录
    Login logins(Login login);
    //注册管理员信息
    void register(Login login);
}
