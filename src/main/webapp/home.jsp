<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donation Management System - Home</title>
    <link rel="stylesheet" href="Styles.css">
</head>
<body>

<!-- Navbar -->
<%@include file="mainnavbar.jsp" %>

<!-- Header Section -->
<header>
    <h1>Welcome to the Donation Management System</h1>
    <p>Connecting donors with those in need to make a difference.</p>
</header>

<!-- Main Content Section -->
<main>
    <!-- Section for Donors -->
    <section id="donors">
        <h2>For Donors</h2>
        <p>If you’re a donor, you can contribute items like food, clothing, and more.</p>
        <a href="donorreg">Register as a Donor</a>
        <a href="donorlogin">Login</a>
    </section>

    <!-- Section for Recipients -->
    <section id="recipients">
        <h2>For Recipients</h2>
        <p>If you’re in need of assistance, register as a recipient to receive donations.</p>
        <a href="recipientreg">Register as a Recipient</a>
        <a href="recipientogin">Login</a>
    </section>

    <!-- Section for Admin -->
    <section id="admin">
        <h2>For Admin</h2>
        <p>Admin can manage donors, recipients, and track donations.</p>
        <a href="adminlogin">Admin Login</a>
        <a href="adminlogin">Manage Donors</a>
        <a href="adminlogin">Manage Recipients</a>
    </section>

    <!-- Section for Logistics Coordinator -->
    <section id="logistics">
        <h2>Logistics Coordination</h2>
        <p>Ensure the smooth delivery of donations to recipients in need.</p>
        <a href="logisticsLogin.jsp">Logistics Login</a>
        <a href="trackDeliveries.jsp">Track Deliveries</a>
    </section>
</main>

<!-- Footer Section -->
<footer>
    <p>&copy; 2024 Donation Management System. All rights reserved.</p>
    <p>Contact Us: <a href="contact.jsp">Contact Page</a></p>
</footer>

</body>
</html>
