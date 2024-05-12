package com.ecommerce.Entites;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "user_details")
public class UserDetail {
    @Id
    @Column(name = "ID", nullable = false, length = 45)
    private String id;

    @Column(name = "Name", nullable = false, length = 45)
    private String name;

    @Column(name = "Type", nullable = false, length = 45)
    private String type;

    @Column(name = "Phone", nullable = false, length = 45)
    private String phone;

    @Column(name = "Birth_date", nullable = false)
    private LocalDate birthDate;

    @Column(name = "email", length = 45)
    private String email;

    @Column(name = "state")
    private Boolean state;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "customer")
    private Set<Account> accounts = new LinkedHashSet<>();

}