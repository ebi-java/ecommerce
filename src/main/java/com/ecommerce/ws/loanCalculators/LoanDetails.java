package com.ecommerce.ws.loanCalculators;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LoanDetails {
    public double amount;
    public float rate;
    public int month;
}
