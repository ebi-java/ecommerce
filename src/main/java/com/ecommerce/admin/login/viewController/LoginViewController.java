package com.ecommerce.admin.login.viewController;

import com.ecommerce.Entites.Admin;
import com.ecommerce.admin.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/login")
public class LoginViewController {

    @Autowired
    private LoginService loginService;


    @GetMapping
    public String getResponse(Model model) {
        model.addAttribute("login", new Admin());
        return "login-Admin";
    }

    @RequestMapping("/confirm-login")
    public String login(@ModelAttribute("login")Admin  admin) {
        System.out.println(admin.getName() + " " + admin.getPassword());
        if(loginService.login(admin.getName(), admin.getPassword())){
            return "home-admin";
        }else {
//            admin.setErrorMessage("Invalid Credentials");
            return "login-Admin";
        }

    }


}
