package com.ecommerce.customer.product.viewController;

import com.ecommerce.customer.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("products")
public class ProductController {
    @Autowired
    ProductService productService;

    @RequestMapping("")
    public String filterProducts(Model model,
                                 @RequestParam(value = "categoryName", required = false) String categoryName,
                                 @RequestParam(value = "productName", required = false) String productName) {
        if (categoryName != null) {
            model.addAttribute("products", productService.findByCategory(categoryName));
        } else if (productName != null) {
            model.addAttribute("products", productService.findByName(productName));
        } else {
            model.addAttribute("products", productService.getAllProducts());
        }

        return "product";
    }

    @RequestMapping("/{id}")
    public String getProductById(Model model, @PathVariable int id){
        model.addAttribute("product", productService.findById(id));
        return "product-details";
    }
}
