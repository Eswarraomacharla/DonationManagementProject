package com.klef.jfsd.SpringBoot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="recipient_table")
public class Recipient {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="recipient_id")
    private int id;

    @Column(name="recipient_name", nullable=false, length=100)
    private String name;

    @Column(name="recipient_gender", nullable=false, length=10)
    private String gender;

    @Column(name="recipient_dateofbirth", nullable=false, length=20)
    private String dateofbirth;

    @Column(name="recipient_email", nullable=false, unique=true, length=100)
    private String email;

    @Column(name="recipient_password", nullable=false, length=100)
    private String password;

    @Column(name="recipient_location", nullable=false, length=100)
    private String location;

    @Column(name="recipient_contact", nullable=false, unique=true, length=20)
    private String contact;

    @Column(name="recipient_supportreason", nullable=false, length=500)
    private String supportReason;

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getSupportReason() {
        return supportReason;
    }

    public void setSupportReason(String supportReason) {
        this.supportReason = supportReason;
    }
    public Recipient orElse(Object object) {
		// TODO Auto-generated method stub
		return null;
	}
}
