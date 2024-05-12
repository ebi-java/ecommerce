package com.ecommerce.customer.login.viewController;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Subscription;
import com.ecommerce.Entites.User;
import com.ecommerce.Entites.UserDetail;
import com.ecommerce.admin.accounts.service.AccountService;
import com.ecommerce.admin.customer.service.CustomerService;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.admin.product.service.ProductServiceImp;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CustomerProfileViewController {

    @Autowired
    private CustomerService customerService;
    @Autowired
    private CustomLoginService customLoginService;

    @Autowired
    private AccountService accountService;

    @Autowired
    private SubscriptionService subscriptionService;

    @Autowired
    private ProductServiceImp productService;


    @GetMapping("/customer/profile")
    public String customerProfile(Model model ){
        String username = (String)SecurityContextHolder.getContext().getAuthentication().getCredentials();
        User customer = customLoginService.login("EBusiness");

        List<Account> allCustomerAccounts = accountService.getAllCustomerAccounts(customer.getUserDetail().getId());
        List<List<Subscription>> subscriptions = new ArrayList<>();

        for (Account account : allCustomerAccounts) {
            subscriptions.add(subscriptionService.findByAccount_AccountNumber(account.getAccountNumber()));
        }

        model.addAttribute("customer",customer);

//        String username= userDetails.getUsername();
        model.addAttribute("subscriptions",subscriptions);
        return "CustomerProfile";
    }

//    @RequestMapping("/customer/update")
//    public String updateProfile(@ModelAttribute Customer customer){
//        Customer customer = customerService.getCustomerById(id);
//        customerService.saveCustomer(customer);
//        return "home-customer";
//    }
}
