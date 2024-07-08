package com.ecommerce.customer.account;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OpenAccountRequest {
    private String accountType;
    private double amount;
}
