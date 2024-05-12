package com.ecommerce.Entites;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.*;

@NoArgsConstructor
@AllArgsConstructor
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

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(
            mappedBy = "customer",
            fetch = FetchType.LAZY
            ,cascade = CascadeType.ALL)
    private Set<Account> accounts = new LinkedHashSet<>();


    public void addAccountToUser(Account account) {
        if (this.accounts == null) {
            this.accounts = new LinkedHashSet<>();
        }
        this.accounts.add(account);
    }
}