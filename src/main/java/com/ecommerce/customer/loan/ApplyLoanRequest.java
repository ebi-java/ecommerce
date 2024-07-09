package com.ecommerce.customer.loan;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplyLoanRequest {
    private String additionalInfo;
    private BigDecimal amount;
    private String filePath1;
    private String filePath2;
}
