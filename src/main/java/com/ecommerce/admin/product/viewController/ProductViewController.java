package com.ecommerce.admin.product.viewController;

import com.ecommerce.Entites.Product;
import com.ecommerce.admin.product.service.ProductServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/product")
public class ProductViewController {

    @Autowired
    private ProductServiceImp productServiceImp;


    // ShowAllProduct
    @GetMapping("/getAll")
    public String getProducts(Model model) {
        model.addAttribute("products", productServiceImp.getProducts());
        return "AminProcductView";

    }

    // AddProduct
    @PostMapping("/add-product")
    public String addProduct(Model model,@ModelAttribute("product") Product product) {
        model.addAttribute("productAdd", productServiceImp.createProduct(product));
        return "AminProcductView";
    }

    // UpdateProduct
    @GetMapping("/get/{id}")
    public String getProductById(@PathVariable("id") int id
            , Model model,@ModelAttribute("product")Product product) {
        model.addAttribute("product",productServiceImp.getProduct(id));
        return "AdminProcductUpdate";
    }
    @PostMapping("/put/{id}")
    public String updateProduct(@PathVariable int id,@ModelAttribute("product")Product product) {
        productServiceImp.updateProduct(product);
        return "AminProcductView";
    }

    // DeleteProduct
    @DeleteMapping("/delete/{id}")
    public String deleteProduct(@PathVariable int id,@ModelAttribute("product")Product product) {
        productServiceImp.deleteProduct(id);
        return "AminProcductView";
    }


}
