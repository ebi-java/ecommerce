package com.ecommerce.admin.customer.viewController;

import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import com.ecommerce.admin.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CustomerViewController
{

    @Autowired
    CustomerDAO customerDAO;
    @Autowired

    CustomerService customerService;
    @GetMapping("/admin/home")

    public String HomeAdmin() {

        return "home-admin";
    }

    @GetMapping("/admin-login")

    public String adminlogin() {

        return "login-Admin";
    }

    @GetMapping("/customer-login")

    public String customerlogin() {

        return "login-Customer";
    }

    @GetMapping("/Customers")

    public String Customerview(Model model) {

        List<Customer> customers=customerDAO.findAll();


        model.addAttribute("customers",customers);

        return "ViewCustomers";
    }

//    @GetMapping(value = "/update-customer/{id}")
//    public String getCustomerById(@PathVariable("id") int id, Model model) {
//        Customer customer = customerService.getCustomerById();
//        model.addAttribute("customer", customer);
//        return "form_update";
//    }



    @RequestMapping("/delete-customer")

    public String deleteCustomerbyId(@RequestParam("id") String id,
                                     Model model) {


        customerDAO.deleteById( (id));
        List<Customer> customers=customerDAO.findAll();
        model.addAttribute("customers",customers);




        return "redirect:/Customers";
    }

}
