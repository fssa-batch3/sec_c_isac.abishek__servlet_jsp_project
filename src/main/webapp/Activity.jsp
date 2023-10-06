<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Activty </title>
<link rel="stylesheet" href="/charitytrust-webapp/assets/css/navcommon.css">
  <link rel="stylesheet" href="/charitytrust-webapp/assets/css/appointment.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">

<link
	href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap"
	rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://kit.fontawesome.com/98f622c388.js"
	crossorigin="anonymous"></script>
</head>

<body>
  <!-- nav starts  -->
  <!-- <div class="checkbox">
    <label for="click" class="text">screen reader</label>
    <input type="checkbox" id="click" >

  </div> -->
  <jsp:include page="header.jsp"></jsp:include>
  <!-- content starts  -->
  <main>
    <h1>Activities</h1>
    <div class="container">
      <!-- <div class="card">
			<img src="https://via.placeholder.com/150" alt="Appointment Image">
			<h2>Appointment Name</h2>
			<p>Time: 10:00am - 11:00am</p>
		</div>
		<div class="card">
			<img src="https://via.placeholder.com/150" alt="Appointment Image">
			<h2>Appointment Name</h2>
			<p>Time: 12:00pm - 1:00pm</p>
		</div>
		<div class="card">
			<img src="https://via.placeholder.com/150" alt="Appointment Image">
			<h2>Appointment Name</h2>
			<p>Time: 2:00pm - 3:00pm</p>
		</div> -->
    </div>
  </main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
 <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
 <script src="/charitytrust-webapp/assets/js/activity.js"></script>
</html>