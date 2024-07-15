package com.ecommerce.customer.certifcate.calculation;


import com.ecommerce.ws.certificateCalculation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer/certificate/calculate")
public class CertificateIntersetRate {

    private final CalculateClientEp bpelprocess1ClientEp;
    private final Calculate bpelProcess1;
    private static final String namspace="http://CertificateInterestRate/";

    public CertificateIntersetRate( ) {
        this.bpelprocess1ClientEp = new CalculateClientEp();
        this.bpelProcess1 = bpelprocess1ClientEp.getCalculatePt();
    }

    @GetMapping()
    public String request(Model model){
        model.addAttribute("request",new CertificateRequest());
        model.addAttribute("types", CertificateType.values());
        return  "certificateCalculation";
    }

    @PostMapping()
    public String response(Model model, @ModelAttribute("request")CertificateRequest certificateRequest){
        CalculateInterestRate c = new CalculateInterestRate();
        c.setArg0(certificateRequest);
        CalculateInterestRateResponse process = bpelProcess1.process(c);
        model.addAttribute("result",process.getReturn());
        return  "certificateCalculation";
    }
}
