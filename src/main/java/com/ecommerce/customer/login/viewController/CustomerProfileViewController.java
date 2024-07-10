package com.ecommerce.customer.login.viewController;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Subscription;
import com.ecommerce.Entites.User;
import com.ecommerce.Entites.UserDetail;
import com.ecommerce.admin.accounts.service.AccountService;
import com.ecommerce.admin.customer.service.CustomerService;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.admin.product.service.ProductServiceImp;
import com.ecommerce.customer.loan.ApplyLoanRequest;
import com.ecommerce.customer.login.requestsStats.Request;
import com.ecommerce.customer.subscription.service.SubscriptionService;
import com.ecommerce.security.CustomUserDetails;
import com.ecommerce.ws.loanws.ProcessLoanAsyncV03;
import com.ecommerce.ws.loanws.ProcessloanAsyncv03ClientEp;
import com.ecommerce.ws.requestsStatus.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CustomerProfileViewController {


    @Autowired
    private CustomerService customerService;
    @Autowired
    private CustomLoginService customLoginService;

    @Autowired
    private AccountService accountService;

    @Autowired
    private SubscriptionService subscriptionService;

    @Autowired
    private ProductServiceImp productService;


    private final GetcustomerrequeststatusClientEp getcustomerrequeststatusClientEp;
    private final GetCustomerRequestStatus getCustomerRequestStatus;
    private final CustomLoginService loginService;
    private static final String REQUEST_NAMESPACE = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB";

    public CustomerProfileViewController(CustomLoginService customLoginService) {
        loginService = customLoginService;
        getcustomerrequeststatusClientEp = new GetcustomerrequeststatusClientEp();
        getCustomerRequestStatus = getcustomerrequeststatusClientEp.getGetCustomerRequestStatusPt();
    }

    @GetMapping("/customer/profile")
    public String customerProfile(Model model){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        CustomUserDetails principal = (CustomUserDetails) auth.getPrincipal();

        CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        User customer = customLoginService.login(userDetails.getUsername());

        List<Account> allCustomerAccounts = accountService.getAllCustomerAccounts(customer.getUserDetail().getId());
        List<List<Subscription>> subscriptions = new ArrayList<>();

        for (Account account : allCustomerAccounts) {
            subscriptions.add(subscriptionService.findByAccount_AccountNumber(account.getAccountNumber()));
        }

        model.addAttribute("customer",customer);

//        String username= userDetails.getUsername();
        model.addAttribute("subscriptions",subscriptions);

        CustomerDBSelectCustID cid = new CustomerDBSelectCustID();
        cid.setCustID(new BigDecimal(customer.getPassword()));
        RequestsCollection collection =new RequestsCollection();
        collection =  getCustomerRequestStatus.process(cid);
        List<Requests> requests = collection.getRequests();
         model.addAttribute("requests",requests);

        return "CustomerProfile";
    }
}
