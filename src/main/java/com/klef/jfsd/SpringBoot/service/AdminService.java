package com.klef.jfsd.SpringBoot.service;

import java.util.List;
import com.klef.jfsd.SpringBoot.model.Admin;
import com.klef.jfsd.SpringBoot.model.Donor;
import com.klef.jfsd.SpringBoot.model.Recipient;

public interface AdminService {

    List<Donor> viewAllDonors();
    List<Recipient> viewAllRecipients();


    // Method to check admin login credentials
    Admin checkAdminLogin(String uname, String pwd);

    // Method to get the count of donors
    long donorcount();
    long recipientcount();

    // Method to get a donor by their ID
    Donor getDonorById(Long id);
    Recipient getRecipientById(Long id);


    // Method to update a donor's information
    // Method to delete a donor by ID
    void deleteDonor(Long id);
    void deleteRecipient(Long id);

}
