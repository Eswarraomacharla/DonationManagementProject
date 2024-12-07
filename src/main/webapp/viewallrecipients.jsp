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
Total Recipients:<c:out value="${count }"></c:out>

<h3 align="center">View All Recipients</h3>
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
<c:forEach items="${recipientlist}" var="recipient">
<tr>
    <td><c:out value="${recipient.id }"></c:out></td>
    <td><c:out value="${recipient.name }"></c:out></td>
    <td><c:out value="${recipient.gender }"></c:out></td>
    <td><c:out value="${recipient.dateofbirth }"></c:out></td>
    <td><c:out value="${recipient.email }"></c:out></td>
    <td><c:out value="${recipient.location }"></c:out></td>
    <td><c:out value="${recipient.contact }"></c:out></td>

    <td>
        <a href="updateRecipient/<c:out value="${recipient.id}"/>">Update</a>
    </td>
    <td>
        <a href="deleteRecipient/<c:out value="${recipient.id}"/>">Delete</a>
    </td>
</tr>
</c:forEach>
</table>
</body>
</html>
