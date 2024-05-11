package com.ecommerce.customer.login.security;

import com.ecommerce.Entites.Admin;
import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.login.service.LoginService;
import com.ecommerce.customer.login.service.CustomerLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    CustomerLoginService customerLoginService;
    @Autowired
    private LoginService loginService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        var user = customerLoginService.loadUserByUsername(username);

        if (user instanceof Customer) {
            return new CustomUserDetails((Customer) user);
        } else if (user instanceof Admin) {
            return new CustomUserDetails((Admin) user);
        } else {
            throw new UsernameNotFoundException("User not found with username: " + username);
        }
    }
}
