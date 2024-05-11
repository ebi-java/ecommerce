package com.ecommerce.Entites;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "admin")
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id", nullable = false)
    private Integer id;

    @Column(name = "Email", nullable = false, length = 45)
    private String email;

    @Column(name = "Password", nullable = false, length = 100)
    private String password;

    @Column(name = "Name", nullable = false, length = 45)
    private String name;
    private UserRole role;

    public Admin(String email, String password, String name) {
        this.email = email;
        this.password = password;
        this.name = name;
    }
}