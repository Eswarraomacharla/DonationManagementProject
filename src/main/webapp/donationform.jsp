<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Make a Donation</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <%@ include file="donornavbar.jsp" %>

    <h3 align="center">Make a Donation</h3>
    <div class="container">
        <form action="processdonation" method="post">
            <!-- Item Type -->
            <label>Select Item Type</label>
            <select class="form-control" name="itemType" required>
                <option value="">Select an item type</option>
                <option value="clothing">Clothing</option>
                <option value="food">Food</option>
                <option value="medicine">Medicine</option>
                <option value="books">Books</option>
                <option value="toys">Toys</option>
                <option value="others">Other</option>
            </select><br/>

            <!-- Quantity -->
            <label>Enter Quantity</label>
            <input type="number" class="form-control" name="quantity" min="1" required/><br/>

            <!-- Item Condition -->
            <label>Select Condition</label>
            <select class="form-control" name="donationCondition" required>
                <option value="">Select condition</option>
                <option value="new">New</option>
                <option value="gently">Gently Used</option>
                <option value="used">Used</option>
            </select><br/>

            <!-- Optional Message -->
            <label>Message (Optional)</label>
            <textarea class="form-control" name="message" rows="4" placeholder="Add a message to the recipient (optional)"></textarea><br/>

            <!-- Submit Button -->
            <input type="submit" value="Donate" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-danger"/>
        </form>
    </div>
</body>
</html>
