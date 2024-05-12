package com.ecommerce.admin.customer.service;

import com.ecommerce.Entites.Account;
import com.ecommerce.Entites.UserDetail;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {

    @Autowired
    private CustomerDAO customerDAO;



    public void saveCustomer(UserDetail c){
        customerDAO.save(c);
    }
    @Transactional
    public void toggleUserState(String id) {
        UserDetail customer = customerDAO.findById(id).orElse(null);
        if (customer != null) {

            customer.setState(!customer.getState());
            customerDAO.save(customer);
        }}

    public void addNewUserDetail(UserDetail customer,Account account){
        customer.addAccountToUser(account);
        customerDAO.save(customer);
    }
    public Optional<UserDetail> getUserDetailById(String id){
        return customerDAO.findById(id);
    }
    public UserDetail getUserDetailByUserDetailname(String username){
        return customerDAO.findByUsername(username).get();
    }

    public void deleteUserDetail(String id){
        customerDAO.deleteById(id);
    }

    public void updateUserDetailState(String id){
        UserDetail customer = customerDAO.findById(id).orElse(null);

        if (customer != null) {

            customer.setState(!customer.getState());
            customerDAO.save(customer);
        }    }



    public List<UserDetail> getAllUserDetails(){
        return customerDAO.findAll();
    }
    public void updateUserDetailBirthData(String id , LocalDate date){
        customerDAO.updateUserBirthDataById(id , date);
    }
    public void updateUserDetailEmail(String id, String email){
        customerDAO.updateUserEmailById(id, email);
    }
    public void updateUserDetailPhone(String id, String phone){
        customerDAO.updateUserPhoneById(id, phone);
    }
    public void updateUserDetailName(String id, String address){
        customerDAO.updateUserNameById(id, address);
    }
}
