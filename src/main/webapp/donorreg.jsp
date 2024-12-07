<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Registration</title>
    <!-- Link the external CSS file -->
    <link rel="stylesheet" type="text/css" href="donorreg.css">
    <script>
        function validateForm() {
            const contact = document.forms["donorForm"]["ccontact"].value;
            const password = document.forms["donorForm"]["cpwd"].value;
            
            // Validate contact number
            if (contact.length < 10 || contact.length > 15) {
                alert("Contact number must be between 10 and 15 digits.");
                return false;
            }
            
            // Validate password strength
            const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            if (!passwordRegex.test(password)) {
                alert("Password must be at least 8 characters long, contain one uppercase letter, one number, and one special character.");
                return false;
            }
            
            return true;
        }
    </script>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <h3 align="center">Donor Registration Form</h3>
    <div class="container">
        <form name="donorForm" method="post" action="insertdonor" onsubmit="return validateForm()">
            <label>Enter Name</label>
            <input type="text" class="form-control" name="cname" required pattern="[A-Za-z\s]{3,50}" 
                   title="Name should contain only letters and spaces, and be 3-50 characters long."/><br/>
            
            <label>Select Gender</label>
            <input type="radio" class="form-check-input" name="cgender" value="Male" required/>Male
            <input type="radio" class="form-check-input" name="cgender" value="Female" required/>Female
            <input type="radio" class="form-check-input" name="cgender" value="Others" required/>Others
            <br/>
            
            <label>Enter Date of Birth</label>
            <input type="date" class="form-control" name="cdob" required max="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" 
                   title="Date of birth cannot be in the future."/><br/>
            
            <label>Enter Email ID</label>
            <input type="email" class="form-control" name="cemail" required 
                   pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
                   title="Enter a valid email address (e.g., user@example.com)."/><br/>
            
            <label>Enter Password</label>
            <input type="password" class="form-control" name="cpwd" required 
                   title="Password must contain at least 8 characters, including one uppercase letter, one number, and one special character."/><br/>
            
            <label>Enter Location</label>
            <input type="text" class="form-control" name="clocation" required 
                   pattern="[A-Za-z\s]{3,100}" 
                   title="Location should contain only letters and spaces, and be 3-100 characters long."/><br/>
            
            <label>Enter Contact</label>
            <input type="number" class="form-control" name="ccontact" required 
                   title="Enter a valid contact number (10-15 digits)."/><br/>
            
            <input type="submit" value="Register" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-danger"/>
        </form>
    </div>
</body>
</html>
