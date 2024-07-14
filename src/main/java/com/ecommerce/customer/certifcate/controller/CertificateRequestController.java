package com.ecommerce.customer.certifcate.controller;

import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.customer.certifcate.CertificateRequest;
import com.ecommerce.security.CustomUserDetails;
import com.ecommerce.ws.CertificateApp.*;

import com.ecommerce.ws.getAccounts.AccountCollection;
import com.ecommerce.ws.getAccounts.CustomerAccounts;
import com.ecommerce.ws.getAccounts.CustomeraccountsClientEp;
import com.ecommerce.ws.getAccounts.GetAccountsSelectCustID;
import jakarta.xml.bind.JAXBElement;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.xml.namespace.QName;
import java.math.BigDecimal;

@Controller
@RequestMapping("/customer/certificate")
public class CertificateRequestController {
    private final ApprovecertificateClientEp ep ;
    private final ApproveCertificate bpel;
    private final CustomeraccountsClientEp getaccountsClientEp;
    private final CustomerAccounts getAccounts;
    private final CustomLoginService loginService;
    private static final String REQUEST_NAMESPACE = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert";

    public CertificateRequestController(CustomLoginService loginService) {
        this.ep = new ApprovecertificateClientEp();
        this.bpel = ep.getApproveCertificatePt();
        this.loginService=loginService;
        this.getaccountsClientEp = new CustomeraccountsClientEp();
        this.getAccounts=getaccountsClientEp.getCustomerAccountsPt();
    }

    @GetMapping
    public String setRequest(Model model) {
        model.addAttribute("request", new CertificateRequest());
        model.addAttribute("types", com.ecommerce.ws.certificateCalculation.CertificateType.values());
        CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder
                .getContext()
                .getAuthentication()
                .getPrincipal();

        User user = loginService.login(userDetails.getUsername());
        GetAccountsSelectCustID customerAccountsSelectCustID =new GetAccountsSelectCustID();
        customerAccountsSelectCustID.setCustID(new BigDecimal(user.getPassword()));
        AccountCollection process = getAccounts.process(customerAccountsSelectCustID);
        model.addAttribute("accounts", process.getAccount());
        return "certificateRequestForm";
    }

    @PostMapping
    public String request(@ModelAttribute("request") CertificateRequest request, Model model) {
        CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder
                .getContext()
                .getAuthentication()
                .getPrincipal();

        User user = loginService.login(userDetails.getUsername());
        RequestsCollection requests = new RequestsCollection();
        Requests req = new Requests();
        req.setRequestid(new BigDecimal(0));
        req.setCustomerid(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "customerid"), BigDecimal.class, new BigDecimal(user.getPassword())));
        req.setRequesttype(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "requesttype"), String.class, "Certificate"));
        req.setAdditionalinfo(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "additionalinfo"), CertificateType.class, request.getType().toCertificateApprovalType()));
        req.setAmount(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "amount"), BigDecimal.class, BigDecimal.valueOf(request.getAmount())));
        req.setStatus(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "status"), String.class, "new"));
        req.setAccountid(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "accountid"), BigDecimal.class, new BigDecimal(request.getAccountId())));

        requests.getRequests().add(req);
        ProcessResponse result = bpel.process(requests);
        model.addAttribute("process", result);

        return "redirect:/customer/profile";
    }
}
