package com.ecommerce.Entites;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "customer")
public class Customer {
    @Id
    @Column(name = "ID", nullable = false, length = 45)
    private String id;

    @Column(name = "Name", nullable = false, length = 45)
    private String name;

    @Column(name = "Type", nullable = false, length = 45)
    private String type;

    @Column(name = "Username", nullable = false, length = 45)
    private String username;

    @Column(name = "Password", nullable = false, length = 100)
    private String password;

    @Column(name = "Phone", nullable = false, length = 45)
    private String phone;

    @Column(name = "Birth_date", nullable = false)
    private LocalDate birthDate;

    @Column(name = "email", length = 45)
    private String email;


    @OneToMany(mappedBy = "customer")
    private Set<Account> accounts = new LinkedHashSet<>();
    @Column(name = "state")
    private boolean state;


}