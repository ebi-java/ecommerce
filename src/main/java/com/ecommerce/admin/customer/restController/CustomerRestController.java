package com.ecommerce.admin.customer.restController;

import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/customers")
public class CustomerRestController {
    private final CustomerService customerService;
    @Autowired
    public CustomerRestController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/get")
    public List<Customer> getAllCustomers(){
        return customerService.getAllCustomers();
    }

//    @PostMapping
//    public void insertCustomer(@RequestBody Customer customer){
//        customerService.saveCustomer(customer);
//    }
//
//    @PutMapping(path="{id}")
//    public void updateCustomer(@PathVariable("id") Integer id,
//                              @RequestParam(required = false) String Name,
//                              @RequestParam(required = false) String type,
//                              @RequestParam(required = false) String userName,
//                               @RequestParam(required = false) String password,
//                               @RequestParam(required = false) String phone,
//                              @RequestParam(required = false) LocalDate birthDate,
//                               @RequestParam(required = false) String email,
//                               @RequestParam(required = false) Boolean state){
//        customerService.updateCustomerStateById();
//    }
//
//    @DeleteMapping(path="{id}")
//    public void deleteStudent(@PathVariable("id") Long id){
//        demoService.deleteStudent(id);
//    }
}
