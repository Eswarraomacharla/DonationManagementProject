<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donation History</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <%@ include file="donornavbar.jsp" %><br/><br/>
    <h3 align="center">Donation History</h3>
    
    <!-- Donation History Table -->
    <div class="container">
        <c:if test="${not empty donationlist}">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Donation ID</th>
                        <th>Item Type</th>
                        <th>Condition</th>
                        <th>Quantity</th>
                        <th>Message</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${donationlist}" var="donation">
                        <tr>
                            <td><c:out value="${donation.donationId}" /></td>
                            <td><c:out value="${donation.itemType}" /></td>
                            <td><c:out value="${donation.donationCondition}" /></td>
                            <td><c:out value="${donation.quantity}" /></td>
                            <td><c:out value="${donation.message}" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty donationlist}">
        </c:if>
    </div>
</body>
</html>
