<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="assets/css/donation.css">
	<link rel="stylesheet" href="assets/css/navcommon.css">
	<link rel="stylesheet" href="assets/css/header.css">
	<script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
	
	<script src="assets/js/sweetalert.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="full">
		<div class="container">
			<!-- <div class="img-container"> -->
			<h1>Donate Now</h1>
			<img src="assets/images/donateus.jpg" alt="" width="425px" class="donateimg">
			<!-- </div> -->
			<form>
				<label for="name">Name:</label>
				<input type="text" id="name" name="name" required pattern="[a-zA-Z]+" title="name must only in alphabets">
				<label for="email">Email:</label>
				<input type="email" id="email" name="email" required >
				<label for="mobile">Mobile</label>
				<input type="text" id="mobile" name="mobile" required pattern="[0-9]\d*" maxlength="10" title="mobile number must be 10 digit number" >
				<label for="donation-amount">Donation Amount:</label>
				<select id="amount" name="amount">
					<option value="0">Select amount</option>
					<option value="25">&#8377 25</option>
					<option value="50">&#8377 50</option>
					<option value="100">&#8377 100</option>
					<option value="250">&#8377 250</option>
					<option value="500">&#8377 500</option>
					<option value="1000">&#8377 1000</option>
				</select>

				<label for="card"><input type="checkbox" name="user" id="card" value="card" >
					<i class="fa-solid fa-credit-card"></i></label>
				<label for="creditcard">Credit Card Number:</label>
				<input type="text" id="creditcard" name="creditcard" disabled pattern="[0-9]\d*" maxlength="16" title="credit number must be 16 digit number">
				<label for="paypal"><input type="radio" name="user" id="paypal" value="paypal" required><i
						class="fa-brands fa-paypal"></i></label>
				<label for="googlepay"><input type="radio" name="user" id="gpay" value="gpay" required><i
						class='fab fa-google-pay'></i></label>
				<label for="amazonpay"><input type="radio" name="user" id="amazonpay" value="amazonpay" required><i
						class="fa-brands fa-amazon-pay"></i></label>

				<button id="submit"> submit</button>

			</form>

		</div>
	</div>
</body>
</html>