package com.klef.jfsd.SpringBoot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.klef.jfsd.SpringBoot.model.Donor;
import com.klef.jfsd.SpringBoot.repository.DonorRepository;

@Service
public class DonorServiceImpl implements DonorService
{
	@Autowired
	private DonorRepository donorRepository;
	@Override
	public String DonorRegistration(Donor donor) {
		donorRepository.save(donor);
		return "Donor Registered Successfully";
	}
	
	@Override
	public Donor checkDonorLogin(String email, String password) 
	{
		return donorRepository.checkDonorLogin(email, password);
	}
	@Override
	public String updateDonor(Donor donor)
	{
		Donor c=donorRepository.findById(donor.getId()).get();
		c.setName(donor.getName());
		c.setContact(donor.getContact());
		c.setDateofbirth(donor.getDateofbirth());
		c.setGender(donor.getGender());
		c.setLocation(donor.getLocation());
		c.setPassword(donor.getPassword());
		
		donorRepository.save(c);
		
		return "Donor Updated successfully";
	}
	   @Override
	      public Donor getDonorByEmailAndContact(String email, String contact) {
	          return donorRepository.findByEmailAndContact(email, contact);
	      }

	      @Override
	      public void updateDonorPassword(Donor donor) {
	          donorRepository.save(donor); // Updates the student record
	      }

	      @Override
	      public Donor getDonorByEmail(String email) {
	          // Using a Spring Data JPA repository to find a student by email
	          return donorRepository.findByEmail(email);
	      }
}
