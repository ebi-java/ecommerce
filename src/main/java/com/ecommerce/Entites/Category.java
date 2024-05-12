package com.ecommerce.Entites;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", nullable = false)
    private Integer id;

    @Column(name = "Name", nullable = false, length = 45)
    private String name;

    @Lob
    @Column(name = "Description")
    private String description;

    @Column(name = "type", length = 45)
    private String type;
    @OneToMany(mappedBy = "categories",fetch = FetchType.LAZY,cascade = {CascadeType.ALL} )
    private Set<Product> products = new LinkedHashSet<>();

}