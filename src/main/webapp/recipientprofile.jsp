<%@page import="com.klef.jfsd.SpringBoot.model.Recipient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   Recipient c = (Recipient) session.getAttribute("recipient");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipient Profile</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #f7f7f7, #eaeaea);
        color: #333;
    }

    h3 {
        text-align: center;
        color: #2c3e50;
        font-size: 1.8rem;
        margin-top: 20px;
        margin-bottom: 20px;
    }

    .profile-container {
        width: 60%;
        margin: 20px auto;
        background: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    .profile-container p {
        font-size: 1rem;
        margin: 10px 0;
        line-height: 1.6;
    }

    .profile-container span {
        font-weight: bold;
        color: #34495e;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .profile-container {
            width: 90%;
        }

        h3 {
            font-size: 1.5rem;
        }

        .profile-container p {
            font-size: 0.95rem;
        }
    }
</style>
</head>
<body>
<%@include file="recipientnavbar.jsp" %>
<h3>My Profile</h3>
<div class="profile-container">
    <p><span>ID:</span> <%=c.getId() %></p>
    <p><span>Name:</span> <%=c.getName() %></p>
    <p><span>Gender:</span> <%=c.getGender() %></p>
    <p><span>Date of Birth:</span> <%=c.getDateofbirth() %></p>
    <p><span>Email:</span> <%=c.getEmail() %></p>
    <p><span>Location:</span> <%=c.getLocation() %></p>
    <p><span>Contact:</span> <%=c.getContact() %></p>
</div>
</body>
</html>
