package com.ecommerce;


import com.ecommerce.admin.login.security.AdminDaoAuthenticationProvider;
import com.ecommerce.admin.login.security.AdminUserDetailsService;
import com.ecommerce.core.jwt.JwtAuthFilter;
import com.ecommerce.customer.login.security.CustomerDaoAuthenticationProvider;
import com.ecommerce.customer.login.service.CustomerLoginService;
import jakarta.servlet.DispatcherType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
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

import java.util.List;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity

public class Config {

//    @Autowired
//    JwtAuthFilter jwtAuthFilter;

    @Bean
    public AdminUserDetailsService userDetailsService() {
        return new AdminUserDetailsService();
    }

    @Bean
    public CustomerLoginService customerDetailsService(){ return new  CustomerLoginService();}

    @Bean
    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
        return NoOpPasswordEncoder.getInstance();
    }


    @Bean
    public AdminDaoAuthenticationProvider authenticationProvider(
            @Qualifier("admin-service") AdminUserDetailsService adminUserDetailsService
    ) {
        AdminDaoAuthenticationProvider authProvider = new AdminDaoAuthenticationProvider();
        authProvider.setUserDetailsService(adminUserDetailsService);
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }

    @Bean
    public CustomerDaoAuthenticationProvider customerAuthenticationProvider(
            @Qualifier("customer-service")  CustomerLoginService customerLoginService
    ) {
        CustomerDaoAuthenticationProvider authProvider = new CustomerDaoAuthenticationProvider();
        authProvider.setUserDetailsService(customerLoginService);
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }


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

    @Bean
    public AuthenticationManager authenticationManager(
            @Qualifier("admin") AdminDaoAuthenticationProvider authProvider,
            @Qualifier("customer") CustomerDaoAuthenticationProvider authProvider1
    ) {
        return new ProviderManager(List.of(authProvider,authProvider1));
    }


    @Bean
    @Order(1)
    public SecurityFilterChain customerSecurityFilterChain(HttpSecurity http) throws Exception {
        http
                .securityMatcher("/customer/**")
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests((auth) ->
                        auth
                                .requestMatchers("/customer/subscription/**")
                                .authenticated()
                                .dispatcherTypeMatchers(DispatcherType.FORWARD)
                                .permitAll()
                )
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
        return http.build();
    }

    @Bean
    @Order(2)
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//        return http.csrf(AbstractHttpConfigurer::disable).authorizeHttpRequests(auth -> auth.anyRequest().permitAll()).build();

        http
                .securityMatcher("/admin/**")
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests((auth) ->
                        auth
                                .requestMatchers("/admin/**")
                                .authenticated()
//                                .anyRequest()
//                                .permitAll()
                )
//                .httpBasic(withDefaults())
                .formLogin((formLogin) ->
                        formLogin
                                .usernameParameter("name")
                                .passwordParameter("password")
                                .loginPage("/admin/bank-miser/login")
                                .loginProcessingUrl("/admin/bank-misr123")
                                .defaultSuccessUrl("/admin/home", true)
                                .permitAll()
                ).sessionManagement((sessionManager) ->
                        sessionManager
                                .maximumSessions(1)
                                .expiredUrl("/bank-miser/login?expired=true")
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
//    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
//        return config.getAuthenticationManager();
//    }


//    @Bean
//    public InMemoryUserDetailsManager userDetailsService() {
//        UserDetails user = User.withDefaultPasswordEncoder()
//                .username("user")
//                .password("password")
//                .roles("USER")
//                .build();
//        return new InMemoryUserDetailsManager(user);
//    }


}
