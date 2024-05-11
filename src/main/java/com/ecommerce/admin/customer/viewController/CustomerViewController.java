package com.ecommerce.admin.customer.viewController;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.accounts.service.AccountService;
import com.ecommerce.admin.customer.CustomerAccount;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import com.ecommerce.admin.customer.service.CustomerService;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
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
    AccountService accountService;
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

    public String viewAllCustomers(Model model) {

        List<Customer> customers=customerService.getAllCustomers();


        model.addAttribute("customers",customers);

        return "ViewCustomers";
    }

    @RequestMapping("/admin/view-customer")
    public String viewCustomer(@RequestParam("id") String id, Model model){

        Customer customer;
        if(customerService.getCustomerById(id).isEmpty())
            return "redirect:/admin/Customers";
        customer=customerService.getCustomerById(id).get();
        model.addAttribute("customer",customer);
        return "customerPreview";
    }

    @RequestMapping("/add-customer")
    public String addCustomerPage(Model model) {
        model.addAttribute("newCustomer", new CustomerAccount());
        return "addcustomerform";
    }

    @PostMapping("/confirm-customer-addition")
    public String addNewCustomer(@ModelAttribute("newCustomer") CustomerAccount customerAccount,
                                 BindingResult bindingResult) {
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
        customerService.deleteCustomer(id);
        return "redirect:/admin/Customers";
    }

    @RequestMapping("/admin/update-customer")
    public String updateCustomerState(@RequestParam("id") String id) {
        customerService.toggleCustomerState(id);
        return "redirect:/admin/Customers";
    }
    @RequestMapping("/admin/add-account-page")
        public String addCustomerAccount(Model model,@RequestParam("custID") String id ){

        if (customerService.getCustomerById(id).isEmpty()) {
            return "/admin/view-customer";
        }

        model.addAttribute("account",new Account());
        model.addAttribute("c",customerService.getCustomerById(id).get());

        return "addaccountscustomer";
    }
    @RequestMapping("/admin/confirm-account-addition")
    public String addAccount(@ModelAttribute("account") Account account
                ,@RequestParam("customer") String id
            ,Model model){
        Customer customer;
        if (customerService.getCustomerById(id).isEmpty()) {
            System.out.println("بايظه");
            return "error";
        }
        customer =customerService.getCustomerById(id).get();
        String accountNumber = UUID.randomUUID()
                .toString().
                replaceAll("-", "").
                replaceAll("[a-z]", "").
                substring(0, 13);

        account.setAccountNumber(accountNumber);

        account.setCreationDate(LocalDate.now());

        account.setCustomer(customer);
        System.out.println(customer);
        System.out.println(account);

        customer.AddAccountToCustomer(account);

//        accountService.addNewAccount(account);
        customerService.saveCustomer(customer); //update customer so sorry ya monika
        return viewCustomer(customer.getId(),model);
    }

    @RequestMapping("/admin/delete-account")
    public String deleteAccount(@RequestParam("accNO") String accNO,@RequestParam("id") String id,Model model) {
        accountService.deleteAccount(accNO);
        return viewCustomer(id,model);
    }


}