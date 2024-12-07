<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JFSD</title>
    
    <!-- Linking Bootstrap and custom CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="donationnavbar.css">
    
    <!-- jQuery and Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <!-- Header Section -->
    <div class="container text-center">
        <h2>Donation Management System</h2>
    </div>
    
    <!-- Navigation Bar -->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Donation Management System</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="donorhome">Home</a></li>
                <li><a href="updateprofile">Update Profile</a></li>
                <li><a href="donorprofile">Donor Profile</a></li>
                <li><a href="donorlogin">Logout</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="donorlogin"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
