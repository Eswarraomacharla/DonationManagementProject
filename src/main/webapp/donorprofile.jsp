<%@page import="com.klef.jfsd.SpringBoot.model.Donor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   Donor c = (Donor) session.getAttribute("donor");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donor Profile</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #ffffff, #f0f4f7);
        color: #333;
    }

    h3 {
        text-align: center;
        font-size: 2rem;
        color: #2c3e50;
        margin-top: 20px;
        margin-bottom: 20px;
    }

    .profile-container {
        width: 60%;
        margin: 20px auto;
        background: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    .profile-container p {
        font-size: 1.5rem;
        margin: 10px 0;
        line-height: 1.6;
    }

    .profile-container span {
        font-weight: bold;
        color: #34495e;
    }

    .profile-container hr {
        border: none;
        height: 1px;
        background: #ddd;
        margin: 15px 0;
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
<%@include file="donornavbar.jsp" %>
<h3>My Profile</h3>
<div class="profile-container">
    <p><span>ID:</span> <%=c.getId() %></p>
    <hr>
    <p><span>Name:</span> <%=c.getName() %></p>
    <p><span>Gender:</span> <%=c.getGender() %></p>
    <p><span>Date of Birth:</span> <%=c.getDateofbirth() %></p>
    <p><span>Email:</span> <%=c.getEmail() %></p>
    <p><span>Location:</span> <%=c.getLocation() %></p>
    <p><span>Contact:</span> <%=c.getContact() %></p>
</div>
</body>
</html>
