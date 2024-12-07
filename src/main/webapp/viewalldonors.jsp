<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/><br/>
Total Donors:<c:out value="${count }"></c:out>

<h3 align="center">View All Donors</h3>
<table align="center" border="2" class="table table-stripped">
<tr>
    <th>ID</th>
    <th>NAME</th>
    <th>GENDER</th>
    <th>DATE OF BIRTH</th>
    <th>EMAIL</th>
    <th>LOCATION</th>
    <th>CONTACT NO</th>
    <th>UPDATE</th> <!-- New column for Update -->
    <th>DELETE</th> <!-- New column for Delete -->
</tr>
<c:forEach items="${donorlist}" var="donor">
<tr>
    <td><c:out value="${donor.id }"></c:out></td>
    <td><c:out value="${donor.name }"></c:out></td>
    <td><c:out value="${donor.gender }"></c:out></td>
    <td><c:out value="${donor.dateofbirth }"></c:out></td>
    <td><c:out value="${donor.email }"></c:out></td>
    <td><c:out value="${donor.location }"></c:out></td>
    <td><c:out value="${donor.contact }"></c:out></td>

    <td>
        <a href="updateprofile">Update</a>
    </td>
    <td>
        <a href="deleteDonor/<c:out value="${donor.id}"/>">Delete</a>
    </td>
</tr>
</c:forEach>
</table>
</body>
</html>
