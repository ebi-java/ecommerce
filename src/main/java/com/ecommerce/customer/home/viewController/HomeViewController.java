package com.ecommerce.customer.home.viewController;

import com.ecommerce.Entites.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeViewController {

    @GetMapping("/customer/home")
    public String HomeCustomer() {
        return "home";
    }
    @GetMapping("/customer/login")
    public String loginCustomer(Model model) {
        model.addAttribute("customer",new Customer());
        return "login-Customer";
    }
}
