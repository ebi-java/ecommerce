package com.ecommerce.customer.product.viewController;

import com.ecommerce.admin.product.service.ProductServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductDemoController {
    @Autowired
    private ProductServiceImp productServiceImp;
    @RequestMapping("/productDemo")
    public String showCustomerProduct(Model model){
        model.addAttribute("products",productServiceImp.getProducts());
        return "customerProduct";
    }
}
