package com.kto03.springboot.TodoListWeb.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kto03.springboot.TodoListWeb.AuthenticationService;


@Controller
@SessionAttributes("name")
public class LoginController {
    private AuthenticationService AuthenticationService;

    public LoginController(AuthenticationService authenticationService) {
        super();
        this.AuthenticationService = authenticationService;
    }

    

    // URL: /login
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String gotoLoginPage() {
        return "login";
    }


    
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String gotoWelcomePage(@RequestParam String name, @RequestParam String password, ModelMap model) {
        if (AuthenticationService.authenticate(name, password)) {
            model.put("name", name);
            return "welcome";
        }
        else {
            model.put("errorMessage", "Invalid Credentials");
            return "login";
        }
    }


}