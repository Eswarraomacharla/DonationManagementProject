package com.klef.jfsd.SpringBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.SpringBoot.model.Donor;

@Repository
public interface DonorRepository extends JpaRepository<Donor, Integer> {
	Donor findByEmailAndContact(String email, String contact);
    // Method to check donor login by email and password
    @Query("select c from Donor c where c.email=?1 and c.password=?2")
    public Donor checkDonorLogin(String email, String password);

    // Method to get a donor by their ID (this is inherited from JpaRepository)
    public Donor findById(Long id);
    Donor findByEmail(String email);
    // Method to delete a donor by their ID (this is inherited from JpaRepository)
    public void deleteById(Long id);
}
