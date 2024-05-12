package com.ecommerce.customer.login.restController;


import com.ecommerce.Entites.Customer;
import com.ecommerce.Entites.LoginResponse;
import com.ecommerce.admin.login.service.CustomLoginService;
import com.ecommerce.customer.login.jwt.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/customer")
public class AuthenticationRestController {

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private CustomLoginService customLoginService;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Customer loginRequest) {
        boolean isAuthenticated = customLoginService.login(loginRequest.getUsername(), loginRequest.getPassword());
        if (isAuthenticated) {
            String token = jwtUtil.generateToken(loginRequest.getUsername());
            return ResponseEntity.ok(new LoginResponse(token));
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid username or password");
        }
    }
}
