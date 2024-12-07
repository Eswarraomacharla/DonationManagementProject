<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Donor</title>
    <!-- Link the external CSS file -->
    <link rel="stylesheet" type="text/css" href="donorreg.css">
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3 align="center">Add Donor Form</h3>
    <div class="container">
        <form method="post" action="insertdonor">
            <label>Enter Name</label>
            <input type="text" class="form-control" name="cname" required/><br/>
            
            <label>Select Gender</label>
            <input type="radio" class="form-check-input" name="cgender" value="Male" required/>Male
            <input type="radio" class="form-check-input" name="cgender" value="Female" required/>Female
            <input type="radio" class="form-check-input" name="cgender" value="Others" required/>Others
            <br/>
            
            <label>Enter Date of Birth</label>
            <input type="date" class="form-control" name="cdob" required/><br/>
            
            <label>Enter Email ID</label>
            <input type="email" class="form-control" name="cemail" required/><br/>
            
            <label>Enter Password</label>
            <input type="password" class="form-control" name="cpwd" required/><br/>
            
            <label>Enter Location</label>
            <input type="text" class="form-control" name="clocation" required/><br/>
            
            <label>Enter Contact</label>
            <input type="number" class="form-control" name="ccontact" required/><br/>
            
            <input type="submit" value="Register" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-danger"/>
        </form>
    </div>
</body>
</html>
