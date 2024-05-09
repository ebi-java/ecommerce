package com.ecommerce.customer.subscription.dao;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Customer;
import com.ecommerce.Entites.Subscription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SubscriptionDAO extends JpaRepository<Subscription, String> {

    @Query("select s from Subscription s where s.account.accountNumber=?1")
    public List<Subscription> findByAccount_AccountNumber(String account);
    //public List<Subscription> findByAccount_AccountNumber
    @Query("select s from Subscription s where s.id = ?1")
    public Subscription findBySubscriptionNumber(int subscriptionNumber);

//    public List<Subscription> findSubscriptionByAccount_id(int id);
}
