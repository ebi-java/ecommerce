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
        return "adminProductAdd";
    }

    @PostMapping("/confirm")
    public String addProduct(@ModelAttribute("product") Product product) {
        if (product.getId() == null ||product.getId() == 0)
            productServiceImp.createProduct(product);
        else
            productServiceImp.updateProduct(product);
        return "redirect://adminProductView";
    }

    // UpdateProduct
    @GetMapping("/update/{id}")
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
