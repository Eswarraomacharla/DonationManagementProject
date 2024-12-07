<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .contact-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        .contact-details {
            font-size: 1.2rem;
            color: #333;
            line-height: 1.6;
        }
        .contact-details p {
            margin: 10px 0;
        }
        .contact-details span {
            font-weight: bold;
            color: #007bff;
        }
        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 0.9rem;
            color: #777;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="contact-container">
        <h1>Contact Us</h1>
        <div class="contact-details">
            <p><span>Address:</span> 123, Main Street, Cityville, Country</p>
            <p><span>Phone:</span> +1 234 567 8900</p>
            <p><span>Email:</span> support@donationms.com</p>
            <p><span>Working Hours:</span> Monday - Friday, 9:00 AM - 5:00 PM</p>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Donation Management System. All rights reserved.</p>
    </div>
</body>
</html>
