package com.ecommerce.admin.customer.service;

import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

@Service
public class CustomerService {

    @Autowired
    private CustomerDAO customerDAO;

    public Customer getCustomerById(String id){
        return customerDAO.findById(id).get();
    }

    public void saveCustomer(Customer c){
        customerDAO.save(c);
    }

    public void deleteCustomer(String id){
        customerDAO.deleteById(id);
    }

    public void updateCustomerStateById(String id, boolean state){
        customerDAO.updateCustomerStateById(id,state);
    }
    public List<Customer> getAllCustomers(){
        return customerDAO.findAll();
    }

//    @Transactional
//    public void updateCustomer( String id,
//                              String Name,
//                              String type,
//                               String userName,
//                                String password,
//                                String phone,
//                               LocalDate birthDate,
//                                String email,
//                               Boolean state) {
//        Customer customer = customerDAO.findById(id)
//                .orElseThrow(() -> new IllegalStateException(
//                        "student with id " + id + " does not exist"));
//
//        if (Name != null &&
//                !Name.isEmpty() &&
//                !Objects.equals(customer.getFirstName(), firstname))
//        {
//            student.setFirstName(firstname);
//        }
//
//        if (lastname != null &&
//                !lastname.isEmpty() &&
//                !Objects.equals(student.getLastName(), lastname))
//        {
//            student.setLastName(lastname);
//        }
//
//        if (email != null &&
//                !email.isEmpty() &&
//                !Objects.equals(student.getEmail(), email))
//        {
//            Optional<Student> studentByEmail = studentRepository.findStudentByEmail(email);
//            if (studentByEmail.isPresent()){
//                throw new IllegalStateException("email taken");
//            }
//            student.setEmail(email);
//        }
//
//        if (birthDate != null &&
//                !birthDate.toString().isEmpty() &&
//                !Objects.equals(student.getDateOfBirth(), birthDate))
//        {
//            student.setDateOfBirth(birthDate);
//        }
//        studentRepository.save(student);
//    }
}
