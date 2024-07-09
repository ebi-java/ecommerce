package com.ecommerce.ws.loanCalculators;

import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.customer.loan.ApplyLoanRequest;
import com.ecommerce.ws.loanws.InputParameters;
import jakarta.xml.bind.JAXBElement;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.xml.namespace.QName;
import java.math.BigDecimal;

@Controller
@RequestMapping("/customer/home")
public class LoanCalculatorController {

    private final CalculateLoanPortBindingQSService calculateLoanPortBindingQSService;
    private final CalculateLoan calculateLoanPort;
    private static final String REQUEST_NAMESPACE = "http://loancalculation/";

    public LoanCalculatorController(CustomLoginService customLoginService) {
        calculateLoanPortBindingQSService = new CalculateLoanPortBindingQSService();
        calculateLoanPort = calculateLoanPortBindingQSService.getCalculateLoanPortBindingQSPort();
    }

    @GetMapping
    public String index(Model model) {
        model.addAttribute("loanCalculationResult", new LoanDetails());
        return "home";
    }

    @PostMapping
    public String request(Model model, @ModelAttribute("loanCalculationResult") LoanDetails request) {
        double amount = request.getAmount();
        float rate = request.getRate();
        int month = request.getMonth();
        String result = calculateLoanPort.calculateLoan(amount,rate,month);
        model.addAttribute("calculationResult", result);
        return "home";
    }
}
