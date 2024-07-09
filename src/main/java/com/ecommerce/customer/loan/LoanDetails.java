package com.ecommerce.customer.loan;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LoanDetails {
    public double amount;
    public double rate;
    public double month;
}
