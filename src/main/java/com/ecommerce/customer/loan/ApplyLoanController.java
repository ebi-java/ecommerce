package com.ecommerce.customer.loan;

import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.customer.account.OpenAccountRequest;
import com.ecommerce.security.CustomUserDetails;
//
import com.ecommerce.ws.loanws.InputParameters;
import com.ecommerce.ws.loanws.ProcessLoanAsyncV03;
import com.ecommerce.ws.loanws.ProcessloanAsyncv03ClientEp;
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
@RequestMapping("/customer/apply-loan")
public class ApplyLoanController {
    private final ProcessloanAsyncv03ClientEp processloanAsyncv03ClientEp;
    private final ProcessLoanAsyncV03 processLoanAsyncV03;
    private final CustomLoginService loginService;
    private static final String REQUEST_NAMESPACE = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure";

    public ApplyLoanController(CustomLoginService customLoginService){
        loginService = customLoginService;
        processloanAsyncv03ClientEp = new ProcessloanAsyncv03ClientEp();
        processLoanAsyncV03 = processloanAsyncv03ClientEp.getProcessLoanAsyncV03Pt();
    }

    @GetMapping
    public String index(Model model) {
        model.addAttribute("request", new ApplyLoanRequest());
        return "apply-loan";
    }

    @PostMapping
    public String request(@ModelAttribute("request") ApplyLoanRequest request) {
        String additionalInfo = request.getAdditionalInfo();
        BigDecimal amount = request.getAmount();
        String filePath1 = request.getFilePath1();
        String filePath2 = String.valueOf(request.getFilePath2());

        CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder
                .getContext()
                .getAuthentication()
                .getPrincipal();

        User user = loginService.login(userDetails.getUsername());

//        RequestsCollection requests = new RequestsCollection();
        InputParameters inputParameters = new InputParameters();
//        Requests req = new Requests();
        inputParameters.setPCUSTOMERID(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "P_CUSTOMERID"), BigDecimal.class, new BigDecimal(user.getPassword())));
        inputParameters.setPAMOUNT(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "P_AMOUNT"), BigDecimal.class, new BigDecimal(String.valueOf(amount))));
        inputParameters.setPADDITIONALINFO(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "P_ADDITIONALINFO"), String.class, additionalInfo));
        inputParameters.setPFILEPATH1(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "P_FILEPATH1"), String.class, filePath1));
        inputParameters.setPFILEPATH2(new JAXBElement<>(new QName(REQUEST_NAMESPACE, "P_FILEPATH2"), String.class, filePath2));
//        requests.getRequests().add(req);
        processLoanAsyncV03.process(inputParameters);

        return "redirect:/customer/profile";
    }
}
