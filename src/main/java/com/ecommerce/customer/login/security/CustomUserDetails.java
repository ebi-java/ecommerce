package com.ecommerce.customer.login.security;

import com.ecommerce.Entites.Admin;
import com.ecommerce.Entites.Customer;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Collections;

public class CustomUserDetails implements UserDetails {
    private Customer customer;
    private Admin admin;

    public CustomUserDetails(Customer customer) {
        this.customer = customer;
    }

    public CustomUserDetails(Admin admin) {
        this.admin = admin;
    }
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (customer != null) {
            return Collections.singleton(new SimpleGrantedAuthority("ROLE_CUSTOMER"));
        } else if (admin != null) {
            return Collections.singleton(new SimpleGrantedAuthority("ROLE_ADMIN"));
        }
        return Collections.emptyList();
    }


    public String getPassword() {
        if (customer != null) {
            return customer.getPassword();
        } else if (admin != null) {
            return admin.getPassword();
        }
        return null;
    }

    @Override
    public String getUsername() {
        if (customer != null) {
            return customer.getUsername();
        } else if (admin != null) {
            return admin.getName();
        }
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
