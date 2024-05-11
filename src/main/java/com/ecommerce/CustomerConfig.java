package com.ecommerce;

import com.ecommerce.admin.login.security.AdminUserDetailsService;
import com.ecommerce.customer.login.security.CustomerDaoAuthenticationProvider;
import com.ecommerce.customer.login.service.CustomerLoginService;
import jakarta.servlet.DispatcherType;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class CustomerConfig {

//    @Bean
//    public UserDetailsService customerUserDetailsService() {
//        return new CustomerLoginService();
//    }

//    @Bean
//    public PasswordEncoder customerPasswordEncoder() {
////        return new BCryptPasswordEncoder();
//        return NoOpPasswordEncoder.getInstance();
//    }




//    @Bean
//    public WebSecurityCustomizer webSecurityCustomizer() {
//        return (web) -> web.ignoring().requestMatchers(
//                "/bower_components/**",
//                "/dist/**",
//                "/plugins/**",
//                "/resources/**",
//                "http://www.springframework.org/tags/form",
//                "https://unpkg.com/sweetalert/dist/sweetalert.min.js",
//                "https://**"
//        );
//    }

    @Qualifier("customer")
    @Bean
    @Order(1)
    public SecurityFilterChain customerSecurityFilterChain(HttpSecurity http) throws Exception {
//        return http.csrf(AbstractHttpConfigurer::disable).authorizeHttpRequests(auth -> auth.anyRequest().permitAll()).build();

        http
                .securityMatcher("/customer/**")
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests((auth) ->
                        auth
                                .requestMatchers("/customer/subscription/**")
                                .authenticated()
                                .dispatcherTypeMatchers(DispatcherType.FORWARD)
                                .permitAll()

//                                .anyRequest()
//                                .permitAll()
                )
//                .httpBasic(withDefaults())
                .formLogin((formLogin) ->
                        formLogin
                                .usernameParameter("username")
                                .passwordParameter("password")
                                .loginPage("/customer/bank-miser-login")
                                .loginProcessingUrl("/customer/bank-misr-customer")
                                .defaultSuccessUrl("/customer/home", true)
                                .permitAll()
                ).sessionManagement((sessionManager) ->
                        sessionManager
                                .maximumSessions(1)
                                .expiredUrl("/bank-misr-customer?expired=true")
                );

        //JWT
//                .sessionManagement((sessionManager) ->
//                        sessionManager
//                                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
//                )
//                .authenticationProvider(authenticationProvider())
//                .addFilterBefore(
//                        jwtAuthFilter,
//                        UsernamePasswordAuthenticationFilter.class
//                );

        return http.build();
    }

//    @Bean
//    @Order(3)
//    public SecurityFilterChain fallThroughChain(HttpSecurity http) throws Exception {
//        return http.authorizeHttpRequests(auth -> auth.anyRequest().permitAll()).build();
//    }

//    @Bean
//    public AuthenticationManager customerAuthenticationManager(AuthenticationConfiguration config) throws Exception {
//        return config.getAuthenticationManager();
//    }
}
