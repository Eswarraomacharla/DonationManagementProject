<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <link rel="stylesheet" type="text/css" href="adminhome.css">
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    
    <!-- Header Section -->
    <div class="header-container">
        <div class="header">
            <h1>Welcome, Admin</h1>
            <p>Manage the Donation Management System effectively.</p>
        </div>
    </div>

    <!-- Stats Section -->
    <div class="stats-container">
        <div class="stats">
            <div class="card">
                <h3>Total Donors</h3>
                <p><c:out value="${count}" /></p>
            </div>
            <div class="card">
                <h3>Total Recipients</h3>
                <p><c:out value="${count}" /></p>
            </div>
            <div class="card">
                <h3>Total Donations</h3>
                <p><c:out value="${totalDonations}" /></p>
            </div>
            <div class="card">
                <h3>Active Campaigns</h3>
                <p><c:out value="${activeCampaigns}" /></p>
            </div>
        </div>
    </div>

    <!-- Recent Donations Section -->
    <div class="donations-container">
        <div class="recent-donations">
            <h2>Recent Donations</h2>
            <table>
                <thead>
                    <tr>
                        <th>Donor Name</th>
                        <th>Item Donated</th>
                        <th>Quantity</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="donation" items="${recentDonations}">
                        <tr>
                            <td><c:out value="${donation.donorName}" /></td>
                            <td><c:out value="${donation.item}" /></td>
                            <td><c:out value="${donation.quantity}" /></td>
                            <td><c:out value="${donation.date}" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
