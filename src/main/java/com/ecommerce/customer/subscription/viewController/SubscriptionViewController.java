package com.ecommerce.customer.subscription.viewController;

<<<<<<<<< Temporary merge branch 1
import com.ecommerce.Entites.Customer;
import com.ecommerce.Entites.Product;
import com.ecommerce.Entites.Subscription;
import com.ecommerce.admin.customer.service.CustomerService;
import com.ecommerce.admin.product.service.ProductService;
import com.ecommerce.customer.login.service.CustomerLoginService;
import com.ecommerce.customer.product.service.CustomerProductService;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
=========
import com.ecommerce.Entites.Subscription;
import com.ecommerce.customer.product.service.CustomerProductService;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import org.springframework.beans.factory.annotation.Autowired;
>>>>>>>>> Temporary merge branch 2
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/subscription")
public class SubscriptionViewController {

    @Autowired
    private SubscriptionService subscriptionService;
<<<<<<<<< Temporary merge branch 1
    @Autowired
    private CustomerLoginService customerService;
    @Autowired
    private ProductService productService;
    @GetMapping("/{id}")
    public String show(Model model,@PathVariable("id") int id){
        if(productService.getProduct(id).getId() == id) {
            model.addAttribute("products", productService.getProduct(id));
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//            UserDetails customer = (UserDetails) authentication.getPrincipal();
            Customer c = customerService.login(authentication.getName());
            model.addAttribute("accounts", c.getAccounts());
        }else {
            model.addAttribute("message", "No product here");
        }
        return "subscription";
    }


    @RequestMapping ("/insert/{id}")
    public String insertSubscription(@ModelAttribute("subscription") Subscription s, Model model, @PathVariable("id") int id) {
=========
    private CustomerProductService customerProductService;


    @RequestMapping ("/insert/{id}")
    public String insertSubscription(@ModelAttribute("subscription") Subscription s, Model model,@PathVariable("id") int id) {
>>>>>>>>> Temporary merge branch 2
        subscriptionService.insertSubscription(s,id);
        model.addAttribute("subscription", new Subscription());
        return "subscription";
    }
<<<<<<<<< Temporary merge branch 1

=========
>>>>>>>>> Temporary merge branch 2
}
