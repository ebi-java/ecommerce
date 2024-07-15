package com.ecommerce.customer.calculator;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LoanDetials {
    private double amount;
    private float rate;
    private int month;
}
