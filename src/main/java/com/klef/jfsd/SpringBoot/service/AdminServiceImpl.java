package com.klef.jfsd.SpringBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.SpringBoot.model.Admin;
import com.klef.jfsd.SpringBoot.model.Donor;
import com.klef.jfsd.SpringBoot.model.Recipient;
import com.klef.jfsd.SpringBoot.repository.AdminRepository;
import com.klef.jfsd.SpringBoot.repository.DonorRepository;
import com.klef.jfsd.SpringBoot.repository.RecipientRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private DonorRepository donorRepository;
    @Autowired
    private RecipientRepository recipientRepository;
    @Autowired
    private AdminRepository adminRepository;

    @Override
    public List<Donor> viewAllDonors() {
        return donorRepository.findAll();
    }
    @Override
    public List<Recipient> viewAllRecipients() {
        return recipientRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        return adminRepository.checkAdminLogin(uname, pwd);
    }

    @Override
    public long donorcount() {
        return donorRepository.count();
    }
    @Override
    public long recipientcount() {
        return recipientRepository.count();
    }

    // Fetch a donor by their ID
    @Override
    public Donor getDonorById(Long id) {
        return donorRepository.findById(id).orElse(null); // Return donor or null if not found
    }
    @Override
    public Recipient getRecipientById(Long id) {
        return recipientRepository.findById(id).orElse(null); // Return donor or null if not found
    }



    // Delete donor by ID
    @Override
    @Transactional  // Ensure this method is wrapped in a transaction
    public void deleteDonor(Long id) {
        donorRepository.deleteById(id);  // Deletes the donor from the database
    }
    @Override
    @Transactional  // Ensure this method is wrapped in a transaction
    public void deleteRecipient(Long id) {
        recipientRepository.deleteById(id);  // Deletes the donor from the database
    }
}
