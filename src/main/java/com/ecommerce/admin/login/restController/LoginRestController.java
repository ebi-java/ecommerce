package com.ecommerce.admin.login.restController;

import com.ecommerce.admin.login.service.LoginService;
import com.ecommerce.core.dto.AuthRequestDTO;
import com.ecommerce.core.dto.JwtResponseDTO;
import com.ecommerce.core.jwt.JwtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/adminlogin")
public class LoginRestController {

    @Autowired
    private LoginService loginService;

//    @Autowired
//    private JwtService jwtService;
//
//    @Autowired
//    private AuthenticationManager authenticationManager;

    @GetMapping
    public boolean AdminLogin(String adminEmail, String adminPassword) {
        return loginService.login(adminEmail, adminPassword);
    }



//    @PostMapping("/api/v1/login")
//    public JwtResponseDTO AdminLogin(@RequestBody AuthRequestDTO authRequestDTO){
//        Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authRequestDTO.getUsername(), authRequestDTO.getPassword()));
//        if(authentication.isAuthenticated()){
//            return JwtResponseDTO.builder()
//                    .accessToken(jwtService.GenerateToken(authRequestDTO.getUsername()))
//                    .build();
//        } else {
//            throw new UsernameNotFoundException("invalid user request..!!");
//        }
//    }


    @GetMapping("/test")
    public String test() {
        return "hello";
    }

}
