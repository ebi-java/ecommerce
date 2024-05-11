package com.ecommerce.admin.login.viewController;

import com.ecommerce.Entites.Admin;
import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.admin.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomLoginViewController {
    @Autowired
    private CustomLoginService loginService;

    private final String[] headers = {"accessToken"};
    private final String[] value = {"Bearer "};
    @GetMapping("/admin/bank-miser/login")
    public String getResponse(Model model) {
        model.addAttribute("login", new Admin());
        return "login-Admin";
    }

    @RequestMapping("/bank-miser/login/confirm-login")
    public String login(@ModelAttribute("login") User user) {
        System.out.println(user.getName() + " " + user.getPassword());
        if(loginService.login(  user.getUsername(), user.getPassword())){
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

    @RequestMapping(value = "/customer/exchangerate")
    public String exchangerates() {
        return "exchange-rate";
    }

    @RequestMapping(value = "/home/exchangerate")
    public String exchangerateshome() {
        return "exchange-rate";
    }


}
