package com.klef.jfsd.SpringBoot.service;

import com.klef.jfsd.SpringBoot.model.Donor;

public interface DonorService 
{
	
	public String DonorRegistration(Donor donor);
	public Donor checkDonorLogin(String email,String password);
	public String updateDonor(Donor donor);
	 void updateDonorPassword(Donor donor);
	Donor getDonorByEmailAndContact(String email, String contact);
	  public Donor getDonorByEmail(String email);
}
