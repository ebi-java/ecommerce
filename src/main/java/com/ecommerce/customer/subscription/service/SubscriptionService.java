package com.ecommerce.customer.subscription.service;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.Subscription;
import com.ecommerce.customer.subscription.dao.SubscriptionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SubscriptionService {

    @Autowired
    private SubscriptionDAO subscriptionDAO;

    public void addSubscription(Subscription s){
       subscriptionDAO.save(s);
    }
   public List<Subscription>findByAccount_AccountNumber(String account){
       return subscriptionDAO.findByAccount_AccountNumber(account);
   }
   public List<Subscription> getAllSubscription(){
        return subscriptionDAO.findAll();
    }
    public Subscription findById(int id){
        return subscriptionDAO.findBySubscriptionNumber(id);
    }
}
