package com.dao;

import com.entity.Login;
import sun.rmi.runtime.Log;

import java.util.List;

public interface LoginDao {
    //登录
    Login logins(Login login);
    //注册管理员信息
    void register(Login login);
}
