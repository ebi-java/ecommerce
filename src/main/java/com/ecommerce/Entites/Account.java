package com.ecommerce.Entites;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "account")
public class Account {
    @Id
    @Column(name = "account_number", nullable = false, length = 45)
    private String accountNumber;

    @Column(name = "Type", nullable = false, length = 45)
    private String type;

    @Column(name = "Balance", nullable = false, precision = 10, scale = 2)
    private BigDecimal balance;

    @Column(name = "Creation_date", nullable = false)
    private LocalDate creationDate;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.EAGER, optional = false,cascade = {
            CascadeType.DETACH,
            CascadeType.REFRESH,
            CascadeType.MERGE,
            CascadeType.PERSIST,

    })
    @JoinColumn(name = "Customer_id", nullable = false)
    private UserDetail customer;

    @OneToMany(mappedBy = "account",cascade = CascadeType.ALL)
    private List<Subscription> subscriptions;

    @Override
    public String toString() {
        return "Account{" +
                "accountNumber='" + accountNumber + '\'' +
                ", type='" + type + '\'' +
                ", balance=" + balance +
                ", creationDate=" + creationDate +
                '}';
    }
}