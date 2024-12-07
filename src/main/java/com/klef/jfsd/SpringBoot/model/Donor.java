package com.klef.jfsd.SpringBoot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="donor_table")
public class Donor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="donor_id")
	private int id;
	@Column(name="donor_name",nullable=false,length = 100)
	private String name;
	@Column(name="donor_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="donor_dateofbirth",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="donor_email",nullable=false,unique=true,length = 100)
	private String email;
	@Column(name="donor_password",nullable=false,length = 100)
	private String password;
	@Column(name="donor_location",nullable=false,length = 100)
	private String location;
	@Column(name="donor_contact",nullable=false,unique=true,length = 20)
	private String contact;
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
	public Donor orElse(Object object) {
		// TODO Auto-generated method stub
		return null;
	}
}
