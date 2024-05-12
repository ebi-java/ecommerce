package com.ecommerce.admin.login.dao;

import com.ecommerce.Entites.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CustomLoginDao extends JpaRepository<User, Integer> {

    @Query("select case when count(a) > 0 then true else false end from User a where a.username = ?1 and a.password = ?2")
    boolean findByNameAndPassword(String name, String password);

    User findByUsername(String username);
    // public boolean checkLogin(String adminEmail, String adminPassword);
}
