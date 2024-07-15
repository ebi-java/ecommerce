package com.ecommerce.customer.calculator;

import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.ws.certificateCalculation.*;
import com.ecommerce.ws.loanCalculators.CalculateLoan;

import com.ecommerce.ws.loanCalculators.CalculateLoanService;
import com.ecommerce.ws.loanCalculators.CalculateLoan_Type;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {
    private final CalculateLoanService calculateLoanPortBindingQSService;
    private final CalculateLoan calculateLoanPort;

    private final CalculateClientEp bpelprocess1ClientEp;
    private final Calculate bpelProcess1;

    private final List<String> currencies = List.of
    ("USD",
            "EUR",
            "EGP",
            "SAR",
            "AED",
            "QAR",
            "OMR",
            "BHD",
            "KWD",
            "JOD",
            "EGP",
            "IQD",
            "YER",
            "SDG"
    );

    public CalculatorController(CustomLoginService customLoginService) {
        calculateLoanPortBindingQSService = new CalculateLoanService();
        calculateLoanPort = calculateLoanPortBindingQSService.getCalculateLoanPort();
        bpelprocess1ClientEp = new CalculateClientEp();
        bpelProcess1 = bpelprocess1ClientEp.getCalculatePt();
    }

    @GetMapping("loan")
    public String loanCalculator(Model model) {
        model.addAttribute("type", "loan");
        model.addAttribute("title", "Loan Calculator");
        model.addAttribute("loanCalculationResult", new LoanDetials());
        return "calculator";
    }

    @PostMapping("loan")
    public String request(Model model, @ModelAttribute("loanCalculationResult") LoanDetials request) {
        double amount = request.getAmount();
        float rate = request.getRate();
        int month = request.getMonth();
        String result = calculateLoanPort.calculateLoan(amount, rate, month);

        model.addAttribute("title", "Loan Calculator");
        model.addAttribute("type", "loan");
        model.addAttribute("calculationResult", result);
        return "calculator";
    }

    @GetMapping("exchangeRate")
    public String exchangeRateCalculator(Model model) {
        model.addAttribute("type", "exchangeRate");
        model.addAttribute("title", "Exchange Rate");
        model.addAttribute("currencies", currencies);
        return "calculator";
    }

    @GetMapping("certificate")
    public String certificateCalculator(Model model) {
        model.addAttribute("type", "certificate");
        model.addAttribute("title", "Certificate Calculator");
        model.addAttribute("request",new CertificateRequest());
        model.addAttribute("types", CertificateType.values());
        return "calculator";
    }

    @PostMapping("certificate")
    public String calculateCertificate(@ModelAttribute("request") CertificateRequest certificateRequest, Model model) {
        model.addAttribute("type", "certificate");
        model.addAttribute("title", "Certificate Calculator");

        if (certificateRequest.getAmount() < 1000) {
            return "calculator";
        }

        CalculateInterestRate c = new CalculateInterestRate();
        c.setArg0(certificateRequest);
        CalculateInterestRateResponse process = bpelProcess1.process(c);

        model.addAttribute("result", String.format("%.2f", process.getReturn()));
        model.addAttribute("types", CertificateType.values());
        return "calculator";
    }
}
