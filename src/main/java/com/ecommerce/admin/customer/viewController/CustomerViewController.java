package com.ecommerce.admin.customer.viewController;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Role;
import com.ecommerce.Entites.User;
import com.ecommerce.Entites.UserDetail;
import com.ecommerce.admin.accounts.service.AccountService;
import com.ecommerce.admin.customer.CustomerAccount;
import com.ecommerce.admin.customer.service.CustomerService;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.security.CustomUserDetails;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
    @Autowired
    CustomLoginService customLoginService;

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

    public String viewAllCustomers(Model model,boolean message,String accNO) {

        List<UserDetail> customers=customerService.getAllUserDetails();

        model.addAttribute("message",message);
        model.addAttribute("accountNubmer",accNO);
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

    @RequestMapping("/admin/add-customer")
    public String addCustomerPage(Model model) {
        model.addAttribute("newCustomer", new CustomerAccount());
        return "addcustomerform";
    }

    @PostMapping("/admin/confirm-customer-addition")
    public String addNewCustomer( @ModelAttribute("newCustomer") CustomerAccount customerAccount,Model model) {

        UserDetail customer = customerAccount.getCustomer();
        Account account = customerAccount.getAccount();

        String accountNumber = UUID.randomUUID()
                .toString().
                replaceAll("-", "").
                replaceAll("[a-z]", "").
                substring(0, 13);

        account.setAccountNumber(accountNumber);
        account.setCreationDate(LocalDate.now());

        String username= customer.getName().split(" ")[0]+UUID.randomUUID().toString()
                .replaceAll("[a-z]","")
                .replaceAll("-" ,"").substring(0,4);

       String password= UUID.randomUUID().toString()
                .replaceAll("-", "")
                .substring(0, 8);
       Role role=customerService.role("customer");
        customer.setUser(new User(username,password,role));
        if (customerService.getUserDetailById(customer.getId()).isEmpty()){
            account.setCustomer(customer);
            customerService.addNewUserDetail(customer,account);
        }

        return viewAllCustomers(model,true,accountNumber);
    }

    @RequestMapping("/admin/delete-customer")
    public String deleteCustomerbyId(@RequestParam("id") String id,@RequestParam("password") String password) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails principal = (CustomUserDetails) auth.getPrincipal();

        CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        User admin = customLoginService.login(userDetails.getUsername());
        if (password.equals(admin.getPassword()))
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
        model.addAttribute("customer",customerService.getUserDetailById(id).get());

        return "addaccountscustomer";
    }

    @RequestMapping("/admin/confirm-account-addition")
    public String addAccount(@ModelAttribute("account") Account account
                ,@RequestParam("customer") String id
            ,Model model){
        UserDetail customer;
        if (customerService.getUserDetailById(id).isEmpty()) {

            return "redirect:/admin/view-customer";
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