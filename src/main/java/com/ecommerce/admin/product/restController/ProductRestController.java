package com.ecommerce.admin.product.restController;


import com.ecommerce.Entites.Product;
import com.ecommerce.admin.category.service.CategoryService;
import com.ecommerce.admin.product.service.ProductServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/product")
public class ProductRestController {
    @Autowired
    private ProductServiceImp serviceImp;
    @Autowired
    private CategoryService categoryService;

    @GetMapping
    public List<Product> getProducts(){
        return serviceImp.getProducts();
    }

    @GetMapping("/{id}")
    public Optional<Product> getProductById(@PathVariable int id){
        return serviceImp.getProduct(id);
    }

    @PostMapping
    public String createProduct(@RequestBody Product product){
        serviceImp.createProduct(product);
        return "inserted successfully in database";
    }

    @PutMapping
    public String updateProduct(@RequestBody Product product){
        serviceImp.updateProduct(product);
        return "Updated successfully";
    }

    @DeleteMapping("/{id}")
    public String deleteProductById(@PathVariable("id") int id){
        serviceImp.deleteProduct(id);
        return "deleted successfully";
    }




}

