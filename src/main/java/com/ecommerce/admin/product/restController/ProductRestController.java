package com.ecommerce.admin.product.restController;


import com.ecommerce.Entites.Product;
import com.ecommerce.admin.product.service.ProductServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/Product")
public class ProductRestController {
    @Autowired
    private ProductServiceImp serviceImp;

    @GetMapping("/{id}")
    public Product getProductById(@PathVariable int id){
        return serviceImp.getProduct(id);
    }

    @GetMapping
    public List<Product> getProducts(){
        return serviceImp.getProducts();
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

