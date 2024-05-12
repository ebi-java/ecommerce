package com.ecommerce.admin.customer;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.User;
import com.ecommerce.Entites.UserDetail;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.boot.autoconfigure.security.SecurityProperties;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CustomerAccount {
    UserDetail customer;
    Account account;
}
