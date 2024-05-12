package com.ecommerce.admin.customer.dao;

import com.ecommerce.Entites.Role;
import com.ecommerce.Entites.UserDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;

import java.util.Optional;

public interface CustomerDAO extends JpaRepository<UserDetail, String> {
    //customer updates
    @Modifying
    @Query("UPDATE  UserDetail c SET c.state = :state WHERE c.id = :id")
    void updateUserStateById(@Param("id") String id, @Param("state") boolean state);


    @Query("update UserDetail c set c.name =?2 where c.id=?1")
    void updateUserNameById(String id ,String name);
    @Query("update UserDetail c set c.email =?2 where c.id=?1")
    void updateUserEmailById(String id ,String email);
    @Query("update UserDetail c set c.phone =?2 where c.id=?1")
    void updateUserPhoneById(String id ,String phone);
    @Query("update UserDetail c set c.birthDate =?2 where c.id=?1")
    void updateUserBirthDataById(String id , LocalDate date);

    @Query("select c from UserDetail c where c.user.username =?1")
    Optional<UserDetail> findByUsername(String username);
    @Query("select c from Role c where c.name=?1")
    Role getUserRolebyname(String name);

}
