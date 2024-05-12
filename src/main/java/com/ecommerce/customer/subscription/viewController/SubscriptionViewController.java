package com.ecommerce.customer.subscription.viewController;

import com.ecommerce.Entites.Subscription;
import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.admin.product.service.ProductService;
import com.ecommerce.customer.product.service.CustomerProductService;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.ecommerce.Entites.Product;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("customer/subscription")
public class SubscriptionViewController {

    @Autowired
    private SubscriptionService subscriptionService;
    @Autowired
    private CustomLoginService customerLoginService;
    @Autowired
    private ProductService productService;
    @Autowired
    private CustomerProductService customerProductService;
    @GetMapping("/{id}")
    public String show(Model model, @PathVariable("id") int id){
        Optional<Product> optionalProduct =  productService.getProduct(id);
        if (optionalProduct.isPresent() && optionalProduct.get().getId() == id) {
            model.addAttribute("product", optionalProduct.get());
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            User c = customerLoginService.login(userDetails.getUsername());
            model.addAttribute("customer", c.getUserDetail());
            model.addAttribute("subscription", new Subscription());
        }else {
            model.addAttribute("message", "No product here");
        }
        return "subscription";
    }


    @RequestMapping ("/insert/{id}")
    public String insertSubscription(@ModelAttribute("subscription") Subscription s, Model model, @PathVariable("id") int id) {
        subscriptionService.insertSubscription(s, id);
        return "redirect:/customer/home";
    }
}
