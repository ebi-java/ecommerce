package com.ecommerce.customer.product.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductDemoController {
    @RequestMapping("/productDemo")
    public String showCustomerProduct(){
        return "customerProduct";
    }
}
