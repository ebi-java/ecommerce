package com.ecommerce.admin.product.viewController;

import com.ecommerce.Entites.Category;
import com.ecommerce.Entites.Product;
import com.ecommerce.admin.category.service.CategoryService;
import com.ecommerce.admin.product.service.ProductServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

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

    @GetMapping("/products") // Updated mapping to /products
    public String getProductsByType(@RequestParam("type") String type, Model model) { // Changed to use @RequestParam
        List<Product> products = productServiceImp.getProductsByType(type);
        model.addAttribute("products", products);
        return "adminProductView";
    }
    @GetMapping("/categories") // Updated mapping to /products
    public String getCategoriesByType(@RequestParam("type") String type, Model model) { // Changed to use @RequestParam
        List<Category> categories = categoryService.getCategoryByType(type);
        List<Product> products = productServiceImp.getProductsByType(type);
        model.addAttribute("categories", categories);
        model.addAttribute("products", products);
        return "adminProductView";
    }





    // AddProduct
    @GetMapping("/add")
    public String addProductPage(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("categories",categoryService.getAllCategories());
        return "adminProductForm";
    }

    @PostMapping("/confirm")
    public String OperationProduct(@ModelAttribute("product") Product product) {
        if (product.getId() == null)
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
