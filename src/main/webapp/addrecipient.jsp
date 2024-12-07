<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Recipients</title>
    <!-- Link the external CSS file -->
    <link rel="stylesheet" type="text/css" href="./css/recipientreg.css">
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3 align="center">Add Recipient</h3>
    <div class="container">
        <form method="post" action="insertrecipient">
            <label>Enter Name</label>
            <input type="text" class="form-control" name="rname" required/><br/>
            
            <label>Select Gender</label>
            <input type="radio" class="form-check-input" name="rgender" value="Male" required/>Male
            <input type="radio" class="form-check-input" name="rgender" value="Female" required/>Female
            <input type="radio" class="form-check-input" name="rgender" value="Others" required/>Others
            <br/>
            
            <label>Enter Date of Birth</label>
            <input type="date" class="form-control" name="rdob" required/><br/>
            
            <label>Enter Email ID</label>
            <input type="email" class="form-control" name="remail" required/><br/>
            
            <label>Enter Password</label>
            <input type="password" class="form-control" name="rpwd" required/><br/>
            
            <label>Enter Location</label>
            <input type="text" class="form-control" name="rlocation" required/><br/>
            
            <label>Enter Contact</label>
            <input type="number" class="form-control" name="rcontact" required/><br/>
            
            <label>Enter Reason for Support</label>
            <textarea class="form-control" name="rsupportreason" rows="4" required></textarea><br/>
            
            <input type="submit" value="Register" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-danger"/>
        </form>
    </div>
</body>
</html>
