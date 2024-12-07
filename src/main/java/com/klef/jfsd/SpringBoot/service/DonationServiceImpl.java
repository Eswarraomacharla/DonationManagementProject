package com.klef.jfsd.SpringBoot.service;

import com.klef.jfsd.SpringBoot.model.Donation;
import com.klef.jfsd.SpringBoot.repository.DonationRepository;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class DonationServiceImpl implements DonationService {

    // Inject the DonationRepository to interact with the database
    private final DonationRepository donationRepository;

    public DonationServiceImpl(DonationRepository donationRepository) {
        this.donationRepository = donationRepository;
    }

    // Save the donation using the repository
    @Override
    public void saveDonation(Donation donation) {
        try {
            // Save the donation object to the database
            donationRepository.save(donation);
            System.out.println("Donation saved: " + donation.getItemType());
        } catch (Exception e) {
            System.err.println("Error saving donation: " + e.getMessage());
            throw new RuntimeException("Failed to save donation", e);
        }
    }

	@Override
	public List<Donation> getDonationsByDonor(int donorId) {
		// TODO Auto-generated method stub
		return null;
	}
}
