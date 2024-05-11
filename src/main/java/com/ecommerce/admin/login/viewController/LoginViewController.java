package com.ecommerce.admin.login.viewController;

import com.ecommerce.Entites.Admin;
import com.ecommerce.admin.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginViewController {

    @Autowired
    private  LoginService loginService;

    private final String[] headers = {"accessToken"};
    private final String[] value = {"Bearer "};
    @GetMapping("/bank-miser/login")
    public String getResponse(Model model) {
        model.addAttribute("login", new Admin());
        return "login-Admin";
    }

    @RequestMapping("/bank-miser/login/confirm-login")
    public String login(@ModelAttribute("login")Admin  admin) {
        System.out.println(admin.getName() + " " + admin.getPassword());
        if(loginService.login(  admin.getName(), admin.getPassword())){
            return "redirect:/admin/home";
        }else {
//            admin.setErrorMessage("Invalid Credentials");
            return "login-Admin";
        }

    }

    @RequestMapping("/bank-miser/logout")

    public String logout() {

        return "redirect:/bank-miser/login";

    }

    @RequestMapping(value = "/admin/home")
    public String home() {
        return "home-admin";
    }


}
