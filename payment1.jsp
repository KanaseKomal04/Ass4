<%@ page language="java" session="true" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Confirmation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }
    .container {
        max-width: 500px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
    }
    form {
        margin-top: 20px;
    }
    label {
        display: block;
        margin-bottom: 5px;
    }
    input[type="text"],
    input[type="email"],
    input[type="number"],
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<%String name=(String)request.getParameter("bname");
String email=(String)request.getParameter("bemail");
String destination=(String)request.getParameter("bdestination");
%>
<div class="container">
    <h2>Payment Confirmation</h2>
    <form action="booking.html" method="get" id="paymentForm">
        
        <label for="name">Name :</label>
        <input type="text" id="Name" name="Name" value="<%=name %>"required>
        <label for="email">Email :</label>
        <input type="text" id="email" name="email" value="<%=email %>"required>
        <label for="dest">Destination :</label>
        <input type="text" id="dest" name="dest" value="<%=destination %>"required>
        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required>
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" required>
        <label for="expiryDate">Expiry Date:</label>
        <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" required>
        
        <input type="submit" value="Confirm Payment" >
    </form>
    <script>
    // Get the form element
    var form = document.getElementById('paymentForm');

    // Add submit event listener
    form.addEventListener('submit', function(event) {
        // Prevent the default form submission
        event.preventDefault();
        
        // Display an alert message
        alert('Payment confirmed! Thank you for your purchase.');
        window.location.href = 'booking.html'; 
    });
</script> 
</div>

</body>
</html>
