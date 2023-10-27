<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donate Now</title>
	<link rel="stylesheet" href="assets/css/donation.css">
	<link rel="stylesheet" href="assets/css/navcommon.css">
	<link rel="stylesheet" href="assets/css/footer.css">
	<script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<!-- include the jQuery library from a CDN -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- include the jQuery UI library from a CDN -->
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
	<!-- include the jQuery UI CSS theme -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/smoothness/jquery-ui.css">
	<link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
	<script src="assets/js/sweetalert.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="full book">
		<div class="container">
			<!-- <div class="img-container"> -->
			<h1>Book Now</h1>
			<img src="assets/images/donateus.jpg" alt="" width="425px" class="bookimg ">
			<!-- </div> -->
			<form id="register" method="post" >
				<label for="name">Name:</label>
				<input type="text" id="name" name="name" required pattern="[a-zA-Z ]+"
					title="name must only in alphabets">
				<label for="email">Email:</label>
				<input type="email" id="email" name="email" required>
				<label for="mobile">Mobile</label>
				<input type="text" id="mobile" name="mobile" required pattern="[0-9]\d*" maxlength="10"
					title="mobile number must be 10 digit number">
				<label for="calender">booking date</label>
				<input type="text" id="calender" name="calender" required>
				<button id="submit" > submit</button>
			</form>

		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>

const today = new Date();
console.log(today);
// const today = new Date();
$('#calender').datepicker({
	minDate: today
});
</script>
 <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="assets/js/bookHospital.js"></script>
</html>