<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Recipient Home</title>
    <!-- Link external CSS -->
    <link rel="stylesheet" type="text/css" href="./css/recipienthome.css">
</head>
<body>
    <%@ include file="recipientnavbar.jsp" %>

    <div class="container">
        <h1>Welcome, Recipient!</h1>
        <p>Explore the features available to you on this platform:</p>

        <div class="dashboard">
            <!-- Profile Section -->
            <div class="card">
                <h2>Profile</h2>
                <p>View and update your profile details.</p>
                <a href="viewrecipientprofile" class="btn">View Profile</a>
            </div>

            <!-- My Requests Section -->
            <div class="card">
                <h2>My Requests</h2>
                <p>View and manage your donation requests.</p>
                <a href="viewrequests" class="btn">View Requests</a>
            </div>

            <!-- Available Donations Section -->
            <div class="card">
                <h2>Available Donations</h2>
                <p>Check out the donations available for you.</p>
                <a href="viewdonations" class="btn">View Donations</a>
            </div>

            <!-- Logout Section -->
            <div class="card">
                <h2>Logout</h2>
                <p>Logout from your account securely.</p>
                <a href="logout" class="btn btn-danger">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>
