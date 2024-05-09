package com.ecommerce.admin.product.viewController;

import com.ecommerce.Entites.Product;
import com.ecommerce.admin.category.service.CategoryService;
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
    @Autowired
    private CategoryService categoryService;


    // ShowAllProduct
    @GetMapping
    public String getProducts(Model model) {
        model.addAttribute("products", productServiceImp.getProducts());
        return "adminProductView";

    }

    // AddProduct
    @GetMapping("/add")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("categories",categoryService.getAllCategories());
        return "adminProductForm";
    }

    @PostMapping("/confirm")
    public String addProduct(@ModelAttribute("product") Product product) {
        if (product.getId() == null || product.getId() == 0)
            productServiceImp.createProduct(product);
        else
            productServiceImp.updateProduct(product);
        return "redirect:/admin/product";
    }

    // UpdateProduct
    @GetMapping("/update/{id}")
    public String getProductById(@PathVariable("id") int id, Model model) {
        model.addAttribute("product",productServiceImp.getProduct(id));
        model.addAttribute("categories",categoryService.getAllCategories());
        return "adminProductForm";
    }

    // DeleteProduct
    @RequestMapping("/delete/{id}")
    public String deleteProduct(@PathVariable("id") int id) {
        productServiceImp.deleteProduct(id);
        return "redirect:/admin/product";
    }


}
