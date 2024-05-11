package com.ecommerce.customer.home.viewController;

import com.ecommerce.Entites.ExchangeRate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class HomeViewController {

    @GetMapping("/customer/home")
    public String HomeCustomer() {
        return "home";
    }


    @GetMapping("/customer/login")
    public String loginCustomer() {
        return "login-Customer";
    }




    @GetMapping("customer/exchangerate")
    public String exchangeratecustomer() {
        return "exchange-rate-customer";
    }

}
