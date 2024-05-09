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
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", nullable = false)
    private int  id;

    @Column(name = "Name", nullable = false, length = 45)
    private String name;

    @Lob
    @Column(name = "Description")
    private String description;

    @Column(name = "type", length = 45)
    private Types type;

    public Category(String name, String description, Types type) {
        this.name = name;
        this.description = description;
        this.type = type;
    }
}