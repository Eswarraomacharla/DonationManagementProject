<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donate</title>
    <link rel="stylesheet" href="./donate.css">
</head>
<body>
<%@ include file="./mainnavbar.jsp" %>

<header>
    <h1>DONATE</h1>
    <p>Those who hold an Indian passport and reside in India</p>
</header>

<section id="donationSection">
    <h2>Make a Donation</h2>
    <form id="donationForm">
        <label for="donorName">Donor Name:</label>
        <input type="text" id="donorName" name="donorName" placeholder="Enter your name" required><br><br>
        
        <label for="donationAmount">Donation Amount (₹):</label>
        <input type="number" id="donationAmount" name="donationAmount" placeholder="Enter amount" required><br><br>
        
        <label for="upiId">UPI ID:</label>
        <input type="text" id="upiId" name="upiId" placeholder="Enter your UPI ID" required><br><br>
        
        <button type="submit">Donate</button>
    </form>
</section>

<section id="donationDetails">
    <h2>Donation Details</h2>
    <table id="donationTable" border="1" cellspacing="0" cellpadding="10">
        <thead>
            <tr>
                <th>Donor Name</th>
                <th>Donation Amount (₹)</th>
                <th>UPI ID</th>
            </tr>
        </thead>
        <tbody>
            <!-- Donation details will be appended here dynamically -->
        </tbody>
    </table>
</section>

<script src="donate.js"></script>
</body>
</html>
