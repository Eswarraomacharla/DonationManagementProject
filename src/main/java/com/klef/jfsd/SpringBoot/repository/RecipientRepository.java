package com.klef.jfsd.SpringBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.SpringBoot.model.Recipient;

@Repository
public interface RecipientRepository extends JpaRepository<Recipient, Integer> {

    @Query("select c from Recipient c where c.email=?1 and c.password=?2")
    public Recipient checkRecipientLogin(String email, String password);

    public Recipient findById(Long id);

    public void deleteById(Long id);
}
