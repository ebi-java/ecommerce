package com.ecommerce.admin.customer;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Customer;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CustomerAccount {
    Customer customer;
    Account account;
}
