package com.ecommerce.admin.login.security;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.stereotype.Component;

@Qualifier("admin")
public class AdminDaoAuthenticationProvider extends DaoAuthenticationProvider {
}
