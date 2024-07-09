package com.ecommerce.customer.account;

import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.security.CustomUserDetails;
import com.ecommerce.ws.account.AccountApprovalBPEL;
import com.ecommerce.ws.account.AccountapprovalBpelClientEp;
import com.ecommerce.ws.account.Requests;
import com.ecommerce.ws.account.RequestsCollection;
import jakarta.xml.bind.JAXBElement;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.xml.namespace.QName;
import java.math.BigDecimal;

@Controller
@RequestMapping("/customer/open-account")
public class AccountController {
    private final AccountapprovalBpelClientEp client;
    private final AccountApprovalBPEL bpel;
    private final CustomLoginService loginService;
    private static final String REQUEST_NAMESPACE = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB";

    public AccountController(CustomLoginService loginService) {
        this.client = new AccountapprovalBpelClientEp();
        this.bpel = client.getAccountApprovalBPELPt();
        this.loginService = loginService;
    }

    @GetMapping()
    public String index(Model model, @RequestParam(value = "accountType", defaultValue = "Savings") String type) {
        model.addAttribute("request", new OpenAccountRequest(type, 0));
        return "open-account";
    }

    @PostMapping
    public String request(@ModelAttribute("request") OpenAccountRequest request) {
        String accountType = (String)request.getAccountType();
        double initialAmount = (Double)request.getAmount();

        CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder
                .getContext()
                .getAuthentication()
                .getPrincipal();

        User user = loginService.login(userDetails.getUsername());

        RequestsCollection requests = new RequestsCollection();
        Requests req = new Requests();
        req.setRequestid(new BigDecimal(0));
        req.setCustomerid(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "customerid"), BigDecimal.class, new BigDecimal(user.getPassword())));
        req.setRequesttype(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "requesttype"), String.class, "Account"));
        req.setAdditionalinfo(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "additionalinfo"), String.class, accountType));
        req.setAmount(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "amount"), BigDecimal.class, new BigDecimal(initialAmount)));
        req.setStatus(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "status"), String.class, "NEW"));

        requests.getRequests().add(req);
        bpel.process(requests);

        return "request-confirmation";
    }
}
