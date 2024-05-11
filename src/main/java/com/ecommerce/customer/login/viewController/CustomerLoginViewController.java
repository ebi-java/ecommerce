//package com.ecommerce.customer.login.viewController;
//
//import com.ecommerce.Entites.Customer;
//import com.ecommerce.customer.login.jwt.JwtUtil;
//import com.ecommerce.customer.login.service.CustomerLoginService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//@RequestMapping
//public class CustomerLoginViewController {
//    @Autowired
//    private CustomerLoginService customerLoginService;
//    @Autowired
//    private JwtUtil jwtUtil;
//    @GetMapping("/customer/bank-miser-login")
//    public String showLoginForm(Model model) {
//        model.addAttribute("customer", new Customer());
//        return "login-Customer";
//    }
//
//
//    @PostMapping("customer/post")
//    public String processLoginForm(@ModelAttribute("customer") Customer customer, Model model) {
//        boolean isAuthenticated = customerLoginService.checkLoginData(customer.getUsername(), customer.getPassword());
//        if (isAuthenticated) {
//            String token = jwtUtil.generateToken(customer.getUsername());
//            model.addAttribute("token", token);
//            return "home-customer";
//        } else {
//            model.addAttribute("error", "Invalid username or password");
//            return "redirect:/customer/login";
//        }
//    }
//
//}
