package com.ecommerce.customer.product.viewController;

import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.customer.product.service.CustomerProductService;
import com.ecommerce.security.CustomUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/customer/products")
public class ProductController {
    @Autowired
    CustomerProductService productService;
    @Autowired
    CustomLoginService customLoginService;

    @RequestMapping
    public String filterProducts(Model model,
                                 @RequestParam(value = "type", defaultValue = "Retail") String type,
                                 @RequestParam(value = "categoryName", required = false) String categoryName,
                                 @RequestParam(value = "productName", required = false) String productName) {
        if (categoryName != null) {
            model.addAttribute("products", productService.findByCategory(categoryName, type));
        } else if (productName != null) {
            model.addAttribute("products", productService.findByName(productName, type));
        } else {
            model.addAttribute("products", productService.getAllProducts());
        }

        try {
            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            if (auth != null) {
                CustomUserDetails userDetails = (CustomUserDetails)auth.getPrincipal();
                if (userDetails != null) {
                    User user = customLoginService.login(userDetails.getUsername());
                    model.addAttribute("isSameType", user.getUserDetail().getType().equalsIgnoreCase(type));
                }
            } else {
                model.addAttribute("isSameType", true);
            }
        } catch (Exception ex) {
            model.addAttribute("isSameType", true);
        }


        return "customerProduct";
    }

    @RequestMapping("/{id}")
    public String getProductById(Model model, @PathVariable int id){
        model.addAttribute("product", productService.findById(id));
        return "product-details";
    }
}
