package com.kto03.springboot.TodoListWeb;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password) {
        boolean isValiUserName = username.equalsIgnoreCase("admin"); 
        boolean isValidPassword = password.equalsIgnoreCase("adminpass");
    return isValiUserName && isValidPassword;
}
}
