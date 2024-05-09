package com.ecommerce.customer.subscription.restController;

import com.ecommerce.Entites.Category;
import com.ecommerce.Entites.Subscription;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/apply_subscription")
public class SubscriptionRestController {

    @Autowired
    private SubscriptionService subscriptionService;

    @GetMapping
    public List<Subscription> getAllSubscription() {
        return subscriptionService.getAllSubscription();
    }


    @GetMapping("/account/{account_id}")
    public List<Subscription> getSubscriptionByAccountId(@PathVariable(name = "account_id") String accountId) {
        return subscriptionService.findByAccount_AccountNumber(accountId);
    }
    @GetMapping("/{id}")
    public Subscription getSubscriptionById(@PathVariable int id) {
        return subscriptionService.findById(id);
    }

    // insert
    @PostMapping("/insert")
    public Subscription insertSubscription(@RequestBody Subscription s) {
        subscriptionService.addSubscription(s);
        return s;
    }

}
