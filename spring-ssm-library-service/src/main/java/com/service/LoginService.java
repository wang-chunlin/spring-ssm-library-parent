package com.service;

import com.entity.Login;

public interface LoginService {
    Login logins(Login login);
    void register(Login login);
}
