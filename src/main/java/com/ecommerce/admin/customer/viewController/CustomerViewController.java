package com.ecommerce.admin.customer.viewController;

import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import com.ecommerce.admin.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CustomerViewController
{

    @Autowired
    CustomerDAO customerDAO;
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






    @PostMapping("/delete-customer")

    public String deleteCustomerbyId(@RequestParam("id") int id) {

      Customer customer= customerDAO.findById(String.valueOf(id)).get();

      customerDAO.delete(customer);




        return "redirect:/ViewCustomers";
    }

}
