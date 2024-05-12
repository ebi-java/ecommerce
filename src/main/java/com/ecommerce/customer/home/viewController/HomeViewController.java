package com.ecommerce.customer.home.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeViewController {

    @GetMapping("/customer/home")
    public String HomeCustomer() {
        return "home";
    }
//    @GetMapping("/customer/login")
//    public String loginCustomer() {
//        return "login-Customer";
//    }
}
