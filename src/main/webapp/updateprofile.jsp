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
<title>Update Profile</title>
</head>
<body>
<%@include file="donornavbar.jsp" %>
<h3 align="center">Donor Update Profile</h3>
<div class="container">
<form method="post" action="update">
<label>ID</label>
<input type="number" class="form-control" name="cid" value="<%=c.getId()%>" readonly required/><br/>
<label>Enter Name</label>
<input type="text" class="form-control" name="cname" value="<%=c.getName()%>" required/><br/>
<label>Select Gender</label>
<input type="radio" class="form-check-input" name="cgender" value="Male" required/>Male
<input type="radio" class="form-check-input" name="cgender" value="Female" required/>Female
<input type="radio" class="form-check-input" name="cgender" value="Others" required/>Others
<br/>
<label>Enter Date of Birth</label>
<input type="date" class="form-control" name="cdob" required/><br/>
<label>Enter Email ID</label>
<input type="email" class="form-control" name="cemail" value="<%=c.getEmail()%>" readonly required/><br/>
<label>Enter Password</label>
<input type="Password" class="form-control" name="cpwd" value="<%=c.getPassword()%>" required/><br/>
<label>Enter Location</label>
<input type="text" class="form-control" name="clocation" value="<%=c.getLocation()%>" required/><br/>
<label>Enter Contact</label>
<input type="number" class="form-control" name="ccontact" value="<%=c.getContact()%>" required/><br/>
<input type="submit" value="Update" class="btn btn-success"/>
<input type="reset" value="clear"/>

</form>
</div>
</body>
</html>