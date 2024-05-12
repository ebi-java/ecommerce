package com.ecommerce.Entites;

import com.fasterxml.jackson.annotation.JsonIgnore;
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


   // @JsonIgnore
    @OneToMany(mappedBy = "customer",fetch = FetchType.LAZY,cascade = {CascadeType.ALL} )
    private Set<Account> accounts = new LinkedHashSet<>();
    @Column(name = "state")
    private boolean state;



//    public Customer(String id, String name, String type, String username, String password, String phone, LocalDate birthDate, String email, Set<Account> accounts, boolean state) {
//        this.id = id;
//        this.name = name;
//        this.type = type;
//        this.username = username;
//        this.password = password;
//        this.phone = phone;
//        this.birthDate = birthDate;
//        this.email = email;
//        this.accounts = accounts;
//        this.state = state;
//    }
public void AddAccountToCustomer(Account account){
    if (account==null)
        return;
    accounts.add(account);


}
    @Override
    public String toString() {
        return "Customer{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", birthDate=" + birthDate +
                ", email='" + email + '\'' +
                ", state=" + state +
                '}';
    }
}