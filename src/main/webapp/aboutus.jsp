<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href="../css/aboutus.css">
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <header class="about-header">
        <h1>About Us</h1>
        <p>Learn more about our mission, vision, and the team driving the change.</p>
    </header>

    <section id="mission" class="about-section">
        <h2>Our Mission</h2>
        <p>To empower individuals and communities by providing essential resources during times of need.</p>
    </section>

    <section id="vision" class="about-section">
        <h2>Our Vision</h2>
        <p>To create a world where no one goes without essentials like food,water,clothes etc and everyone has the opportunity to thrive, supported by a strong network of caring individuals and organizations.</p>
    </section>

    <section id="team" class="about-section">
        <h2>Meet the Team</h2>
        <div id="team-container" class="team-container">
            <!-- Team members will be dynamically populated by aboutus.js -->
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 Donation Management System. All rights reserved.</p>
    </footer>
</body>
</html>
