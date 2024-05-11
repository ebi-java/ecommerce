package com.ecommerce.admin.customer.viewController;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.customer.CustomerAccount;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import com.ecommerce.admin.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

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

    @GetMapping("/admin/Customers")

    public String Customerview(Model model) {

        List<Customer> customers=customerDAO.findAll();


        model.addAttribute("customers",customers);

        return "ViewCustomers";
    }

    @RequestMapping("/add-customer")
    public String addCustomerPage(Model model) {
        model.addAttribute("newCustomer", new CustomerAccount());
        return "addcustomerform";
    }

    @PostMapping("/confirm-customer-addition")
    public String addNewCustomer(@ModelAttribute("newCustomer") CustomerAccount customerAccount) {
        Customer customer = customerAccount.getCustomer();
        Account account = customerAccount.getAccount();

        String accountNumber = UUID.randomUUID()
                .toString().
                replaceAll("-", "").
                replaceAll("[a-z]", "").
                substring(0, 13);

        account.setAccountNumber(accountNumber);
        account.setCreationDate(LocalDate.now());

        customer.setUsername(customer.getName()+UUID.randomUUID().toString()
                .replaceAll("[a-z]","")
                .replaceAll("-" ,"").substring(0,4));

        customer.setPassword(UUID.randomUUID().toString()
                .replaceAll("-", "")
                .substring(0, 8));

        if (customerService.getCustomerById(customer.getId()).isEmpty()){
            account.setCustomer(customer);
            customerService.addNewCustomer(customer,account);
        }
        return "redirect:/admin/Customers";
    }

    @RequestMapping("/admin/delete-customer")
    public String deleteCustomerbyId(@RequestParam("id") String id) {
        customerDAO.deleteById(id);
        return "redirect:/admin/Customers";
    }

    @RequestMapping("/admin/update-customer")
    public String updateCustomerState(@RequestParam("id") String id) {
        customerService.toggleCustomerState(id);
        return "redirect:/admin/Customers";
    }

}