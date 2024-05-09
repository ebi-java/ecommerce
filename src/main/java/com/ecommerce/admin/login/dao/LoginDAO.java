package com.ecommerce.admin.login.dao;

import com.ecommerce.Entites.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface LoginDAO extends JpaRepository<Admin, Integer> {

    @Query("select case when count(a) > 0 then true else false end from Admin a where a.name = ?1 and a.password = ?2")
     boolean findByNameAndPassword(String name, String password);
   // public boolean checkLogin(String adminEmail, String adminPassword);
}
