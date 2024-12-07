package com.klef.jfsd.SpringBoot.service;

import com.klef.jfsd.SpringBoot.model.Donation;
import java.util.List;

public interface DonationService {
    List<Donation> getDonationsByDonor(int donorId); // Add this method in the interface
    void saveDonation(Donation donation);
}
