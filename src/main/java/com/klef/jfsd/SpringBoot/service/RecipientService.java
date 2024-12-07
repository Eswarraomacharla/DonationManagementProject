package com.klef.jfsd.SpringBoot.service;

import com.klef.jfsd.SpringBoot.model.Recipient;

public interface RecipientService 
{
	
	public String RecipientRegistration(Recipient recipient);
	public Recipient checkRecipientLogin(String email,String password);
	public String updateRecipient(Recipient recipient);

}
