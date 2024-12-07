package com.klef.jfsd.SpringBoot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.SpringBoot.model.Recipient;
import com.klef.jfsd.SpringBoot.repository.RecipientRepository;

@Service
public class RecipientServiceImpl implements RecipientService{
	@Autowired
	private RecipientRepository recipientRepository;
	@Override
	public String RecipientRegistration(Recipient recipient) {
		recipientRepository.save(recipient);
		return "Recipient Registered Successfully";
	}
	
	@Override
	public Recipient checkRecipientLogin(String email, String password) 
	{
		return recipientRepository.checkRecipientLogin(email, password);
	}

	@Override
	public String updateRecipient(Recipient recipient)
	{
		Recipient c=recipientRepository.findById(recipient.getId()).get();
		c.setName(recipient.getName());
		c.setContact(recipient.getContact());
		c.setDateofbirth(recipient.getDateofbirth());
		c.setGender(recipient.getGender());
		c.setLocation(recipient.getLocation());
		c.setPassword(recipient.getPassword());
		
		recipientRepository.save(c);
		
		return "Donor Updated successfully";
	}
}
