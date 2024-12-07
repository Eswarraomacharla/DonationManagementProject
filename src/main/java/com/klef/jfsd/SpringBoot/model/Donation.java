package com.klef.jfsd.SpringBoot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "donation_form_table")  // Changed table name to match the form context
public class Donation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "donation_id")  // Donation ID is still valid
    private Integer donationId;

    @Column(name = "item_type", nullable = false)  // itemType corresponds to the form field
    private String itemType;

    @Column(name = "donation_condition", nullable = false)  // donationCondition corresponds to the form field
    private String donationCondition;

    @Column(name = "message")
    private String message;

    @Column(name = "quantity", nullable = false)  // quantity corresponds to the form field
    private Integer quantity;

    // Default constructor
    public Donation() {}

    // Parameterized constructor
    public Donation(String itemType, String donationCondition, String message, Integer quantity) {
        this.itemType = itemType;
        this.donationCondition = donationCondition;
        this.message = message;
        this.quantity = quantity;
    }

    // Getters and Setters
    public Integer getDonationId() {
        return donationId;
    }

    public void setDonationId(Integer donationId) {
        this.donationId = donationId;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public String getDonationCondition() {
        return donationCondition;
    }

    public void setDonationCondition(String donationCondition) {
        this.donationCondition = donationCondition;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    // Override toString method for better readability
    @Override
    public String toString() {
        return "Donation [donationId=" + donationId + ", itemType=" + itemType + ", donationCondition=" 
                + donationCondition + ", message=" + message + ", quantity=" + quantity + "]";
    }
}
