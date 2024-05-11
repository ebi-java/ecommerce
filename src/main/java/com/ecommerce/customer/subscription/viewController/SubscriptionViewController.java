package com.ecommerce.customer.subscription.viewController;

import com.ecommerce.Entites.Subscription;
import com.ecommerce.customer.product.service.CustomerProductService;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/subscription")
public class SubscriptionViewController {

    @Autowired
    private SubscriptionService subscriptionService;
    private CustomerProductService customerProductService;


    @RequestMapping ("/insert/{id}")
    public String insertSubscription(@ModelAttribute("subscription") Subscription s, Model model,@PathVariable("id") int id) {
        subscriptionService.insertSubscription(s,id);
        model.addAttribute("subscription", new Subscription());
        return "subscription";
    }
}
