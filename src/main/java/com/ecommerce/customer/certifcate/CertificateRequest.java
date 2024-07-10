package com.ecommerce.customer.certifcate;

import com.ecommerce.ws.certificateCalculation.CertificateType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CertificateRequest {
    private int customerId;
    private int accountId;
    private CertificateType type;
    private double amount;
}
