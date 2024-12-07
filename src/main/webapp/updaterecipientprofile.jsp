<%@ page import="com.klef.jfsd.SpringBoot.model.Recipient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Recipient c = (Recipient) session.getAttribute("recipient");
    if (c == null) {
        response.sendRedirect("recipientlogin"); // Redirect to login if donor is not logged in
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<link rel="stylesheet" type="text/css" href="./updaterecipientprofile.css">
</head>
<body>
<%@include file="recipientnavbar.jsp" %>
<h3 align="center">Recipient Update Profile</h3>
<div class="container">
<form method="post" action="update2">
<label>ID</label>
<input type="number" class="form-control" name="rid" value="<%=c.getId()%>" readonly required/><br/>
<label>Enter Name</label>
<input type="text" class="form-control" name="rname" value="<%=c.getName()%>" required/><br/>
<label>Select Gender</label>
<input type="radio" class="form-check-input" name="rgender" value="Male" required/>Male
<input type="radio" class="form-check-input" name="rgender" value="Female" required/>Female
<input type="radio" class="form-check-input" name="rgender" value="Others" required/>Others
<br/>
<label>Enter Date of Birth</label>
<input type="date" class="form-control" name="rdob" required/><br/>
<label>Enter Email ID</label>
<input type="email" class="form-control" name="remail" value="<%=c.getEmail()%>" readonly required/><br/>
<label>Enter Password</label>
<input type="Password" class="form-control" name="rpwd" value="<%=c.getPassword()%>" required/><br/>
<label>Enter Location</label>
<input type="text" class="form-control" name="rlocation" value="<%=c.getLocation()%>" required/><br/>
<label>Enter Contact</label>
<input type="number" class="form-control" name="rcontact" value="<%=c.getContact()%>" required/><br/>
<input type="submit" value="Update" class="btn btn-success"/>
<input type="reset" value="clear"/>

</form>
</div>
</body>
</html>