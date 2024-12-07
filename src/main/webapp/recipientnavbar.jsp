<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="./css/recipientnavbar.css">
</head>
<body>
    <header>
        <h1 class="header-title">Donation Management System</h1>
    </header>
    <nav>
        <div class="navbar">
            <ul>
                <!-- Home link -->
                <li><a href="recipienthome">Home</a></li>

                <!-- Profile link -->
                <li><a href="recipientprofile">View Profile</a></li>

                <!-- Update Profile -->
                <li><a href="updaterecipientprofile">Update Profile</a></li>

                <!-- Requests -->
                <li><a href="viewrequests">My Requests</a></li>

                <!-- Available Donations -->
                <li><a href="viewdonations">Available Donations</a></li>

                <!-- Logout -->
                <li><a href="recipientlogin" class="logout">Logout</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
