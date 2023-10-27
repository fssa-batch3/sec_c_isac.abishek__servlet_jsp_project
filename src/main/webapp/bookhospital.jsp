<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="icon" href="assets/images/icon.png">
 
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/book.css">
  <!-- <link rel="stylesheet" href="../../assets/css/donation.css"> -->
  <link rel="stylesheet" href="assets/css/navcommon.css">
  <link rel="stylesheet" href="assets/css/footer.css">
 
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<section class="sec1">
    <div class="sec1h1">
      <h1>BOOK HOSPITAL</h1>
    </div>
  </section>
  <div class="full">
    <section class="sec2">
      <h2>Here you can book the hospitals which is nearby you.<br>Here the list of hospitals which is collabed with
        trust<br>You can get medical help free and low cost</h2>
      <hr>
      <div class="search-container">
        <input type="text" id="search-bar" placeholder="Search product by name...">
        <!-- <button type="button" >Search</button> -->
      
      </div>

    </section>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="assets/js/viewHospital.js"></script>
</html>