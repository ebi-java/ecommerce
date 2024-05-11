package com.ecommerce.customer.login.security;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.stereotype.Component;

@Qualifier("customer")
public class CustomerDaoAuthenticationProvider extends DaoAuthenticationProvider {
}
