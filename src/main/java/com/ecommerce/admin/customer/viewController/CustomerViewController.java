package com.ecommerce.admin.customer.viewController;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.UserDetail;
import com.ecommerce.admin.accounts.service.AccountService;
import com.ecommerce.admin.customer.CustomerAccount;
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

        List<UserDetail> customers=customerService.getAllUserDetails();


        model.addAttribute("customers",customers);

        return "ViewCustomers";
    }

    @RequestMapping("/admin/view-customer")
    public String viewCustomer(@RequestParam("id") String id, Model model){

        UserDetail customer;
        if(customerService.getUserDetailById(id).isEmpty())
            return "redirect:/admin/Customers";
        customer=customerService.getUserDetailById(id).get();
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
        UserDetail customer = customerAccount.getCustomer();
        Account account = customerAccount.getAccount();

        String accountNumber = UUID.randomUUID()
                .toString().
                replaceAll("-", "").
                replaceAll("[a-z]", "").
                substring(0, 13);

        account.setAccountNumber(accountNumber);
        account.setCreationDate(LocalDate.now());

        customer.getUser().setUsername(customer.getName()+UUID.randomUUID().toString()
                .replaceAll("[a-z]","")
                .replaceAll("-" ,"").substring(0,4));

        customer.getUser().setPassword(UUID.randomUUID().toString()
                .replaceAll("-", "")
                .substring(0, 8));

        if (customerService.getUserDetailById(customer.getId()).isEmpty()){
            account.setCustomer(customer);
            customerService.addNewUserDetail(customer,account);
        }
        return "redirect:/admin/Customers";
    }

    @RequestMapping("/admin/delete-customer")
    public String deleteCustomerbyId(@RequestParam("id") String id) {
        customerService.deleteUserDetail(id);
        return "redirect:/admin/Customers";
    }

    @RequestMapping("/admin/update-customer")
    public String updateCustomerState(@RequestParam("id") String id) {
        customerService.toggleUserState(id);
        return "redirect:/admin/Customers";
    }

    @RequestMapping("/admin/add-account-page")
    public String addCustomerAccount(Model model,@RequestParam("custID") String id ){

        if (customerService.getUserDetailById(id).isEmpty()) {
            return "/admin/view-customer";
        }

        model.addAttribute("account",new Account());
        model.addAttribute("c",customerService.getUserDetailById(id).get());

        return "addaccountscustomer";
    }

    @RequestMapping("/admin/confirm-account-addition")
    public String addAccount(@ModelAttribute("account") Account account
                ,@RequestParam("customer") String id
            ,Model model){
        UserDetail customer;
        if (customerService.getUserDetailById(id).isEmpty()) {
            System.out.println("بايظه");
            return "error";
        }
        customer =customerService.getUserDetailById(id).get();
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

        customer.addAccountToUser(account);

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