package com.ecommerce.customer.subscription.viewController;

import com.ecommerce.Entites.Customer;
import com.ecommerce.Entites.Subscription;
import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.admin.login.viewController.CustomLoginViewController;
import com.ecommerce.admin.product.service.ProductService;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer/subscription")
public class SubscriptionViewController {

    @Autowired
    private SubscriptionService subscriptionService;
    @Autowired
    private CustomLoginService customerLoginService;
    @Autowired
    private ProductService productService;
    @GetMapping("/{id}")
    public String show(Model model, @PathVariable("id") int id){
        if(productService.getProduct(id).getId() == id) {
            model.addAttribute("products", productService.getProduct(id));
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//            UserDetails customer = (UserDetails) authentication.getPrincipal();
            User c = customerLoginService.login(authentication.getName());
//            model.addAttribute("accounts", c.getAccounts());
        }else {
            model.addAttribute("message", "No product here");
        }
        return "subscription";
    }


    @RequestMapping ("/insert/{id}")
    public String insertSubscription(@ModelAttribute("subscription") Subscription s, Model model, @PathVariable("id") int id) {
        subscriptionService.insertSubscription(s, id);
        model.addAttribute("subscription", new Subscription());
        return "subscription";
    }
}
