package com.ecommerce.admin.customer.restController;

import com.ecommerce.Entites.UserDetail;
import com.ecommerce.admin.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/customers")
public class CustomerRestController {
    private final CustomerService customerService;
    @Autowired
    public CustomerRestController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping
    public List<UserDetail> getAllCustomers(){
        return customerService.getAllUserDetails();
    }

    @PostMapping
    public UserDetail insertCustomer(@RequestBody UserDetail customer){
        customerService.saveCustomer(customer);
        return customer;
    }

    @DeleteMapping(path="{id}")
    public void deleteStudent(@PathVariable("id") String id){
        customerService.deleteUserDetail(id);
    }
}
