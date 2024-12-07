package com.klef.jfsd.SpringBoot.repository;

import com.klef.jfsd.SpringBoot.model.Donation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DonationRepository extends JpaRepository<Donation, Integer> {
    // Custom query methods (if any) can be added here
}
