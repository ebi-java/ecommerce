package com.ecommerce.Entites;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id", nullable = false)
    private Integer id;

    @Column(name = "Name", nullable = false, length = 45)
    private String name;

    @Column(name = "Details", nullable = false, length = 45)
    private String details;

    @Column(name = "Image", length = 45)
    private String image;

    @Column(name = "Duration")
    private Integer duration;

    @Column(name = "Interest_rate", precision = 4, scale = 2)
    private BigDecimal interestRate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Category_id")
    private Category category;

    public Product(String name, String details, String image, Integer duration, BigDecimal interestRate, Category category) {
        this.name = name;
        this.details = details;
        this.image = image;
        this.duration = duration;
        this.interestRate = interestRate;
        this.category = category;
    }
}