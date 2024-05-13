package com.ecommerce.customer.subscription.viewController;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Subscription;
import com.ecommerce.Entites.User;
import com.ecommerce.admin.accounts.service.AccountService;
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

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/customer/subscription")
@SessionAttributes("subscription")
public class SubscriptionViewController {

    @Autowired
    private SubscriptionService subscriptionService;
    @Autowired
    private CustomLoginService customerLoginService;
    @Autowired
    private ProductService productService;
    @Autowired
    private AccountService accountService;
    @GetMapping("/{id}")
    public String show(Model model, @PathVariable("id") int id){
        Optional<Product> optionalProduct =  productService.getProduct(id);
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetails = (UserDetails) authentication.getPrincipal();
        User c = customerLoginService.login(userDetails.getUsername());
        model.addAttribute("customer", c.getUserDetail());
        Subscription subscription = new Subscription();
        if (optionalProduct.isPresent() && optionalProduct.get().getId() == id) {
            model.addAttribute("product", optionalProduct.get());
            System.out.println(optionalProduct.get().getName().toLowerCase());
            if(optionalProduct.get().getName().toLowerCase().contains("account") || optionalProduct.get().getName().toLowerCase().contains("accounts") ){
                Account account = new Account();
                String accountNumber = UUID.randomUUID()
                        .toString().
                        replaceAll("-", "").
                        replaceAll("[a-z]", "").
                        substring(0, 13);

                account.setAccountNumber(accountNumber);
                account.setCreationDate(LocalDate.now());
                account.setCustomer(c.getUserDetail());
                account.setType(optionalProduct.get().getName());
                subscription.setAccount(account);
            }
            subscription.setProduct(optionalProduct.get());
            model.addAttribute("subscription",subscription);
        }else {
            model.addAttribute("message", "No product here");
        }
        return "subscription";
    }

    @RequestMapping ("/insert/{id}")
    public String insertSubscription(@ModelAttribute("subscription") Subscription subscription, Model model, @PathVariable("id") int id) {
        subscription.setProduct(productService.getProduct(id).get());
        if(
                subscription.getProduct().getCategories().getName().toLowerCase().contains("accounts") ||
                subscription.getProduct().getCategories().getName().toLowerCase().contains("account")
        )
        {
            subscription.getAccount().setBalance(BigDecimal.valueOf(0));
            accountService.addNewAccount(subscription.getAccount());
        }
        subscriptionService.insertSubscription(subscription, id);
        return "redirect:/customer/profile";
    }
}
