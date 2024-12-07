<%@ page import="com.klef.jfsd.SpringBoot.model.Donor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Donor c = (Donor) session.getAttribute("donor");
    if (c == null) {
        response.sendRedirect("donorlogin"); // Redirect to login if donor is not logged in
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Donor Home</title>
    
    <!-- Linking Bootstrap and custom CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    
    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- Include Navbar -->
    <%@ include file="donornavbar.jsp" %>

    <!-- Welcome Section -->
    <div class="container">
        <div class="jumbotron text-center">
            <h3>Welcome, <%= c.getName() %>!</h3>
            <p>Thank you for being a part of the Donation Management System. Here, you can manage your donations, view requests, and help those in need.</p>
        </div>

        <!-- Dashboard Links -->
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">Make a Donation</div>
                    <div class="panel-body">
                        <p>Donate essential items to people in need. Every donation helps improve lives!</p>
                        <a href="donationform" class="btn btn-primary">Donate Now</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-info">
                    <div class="panel-heading">View Donation History</div>
                    <div class="panel-body">
                        <p>Track your previous donations and see how your contributions have made an impact.</p>
                        <a href="donationhistory" class="btn btn-info">View History</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-success">
                    <div class="panel-heading">View Requests</div>
                    <div class="panel-body">
                        <p>Explore current requests for donations and see where help is most needed.</p>
                        <a href="recipientRequests.jsp" class="btn btn-success">View Requests</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
