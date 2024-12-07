<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Donation Management System</title>

  <!-- Link to Navbar CSS -->
  <link rel="stylesheet" href="./css/homenavbar.css">
</head>
<body>
  <h1 align="center">Donation Management System</h1>
  <!-- Navbar Section -->
  <nav class="navbar">
    <ul class="navbar-links">
    <li><a href="/">Home</a></li>
      <li>
        <a href="#">About Us</a>
        <ul class="dropdown-menu">
          <li><a href="aboutus">Our Mission</a></li>
          <li><a href="#">Team</a></li>
          <li><a href="#">FAQ</a></li>
        </ul>
      </li>


      <li>
        <a href="#">Login</a>
        <ul class="dropdown-menu">
          <li><a href="adminlogin">Admin Login</a></li>
          <li><a href="donorlogin">Donor Login</a></li>
          <li><a href="recipientlogin">Recipient Login</a></li>
          <li><a href="#">Logistic Login</a></li>
          
          
        </ul>
      </li>
      <li><a href="contactus.jsp">Contact Us</a></li>
    </ul>
    <button class="navbar-donate"><a href="donate.jsp">Donate</a></button>
  </nav>
</body>
</html>
