<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/book.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="icon" href="../../assets/images/icon.png">
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section class="sec1">
    <div class="sec1h1 donationbg">
    <a href="requestmail.jsp" >  <button class="join pointer" style="display:none;">request donation</button></a>
      <h1>Donate now</h1>
    </div>
  </section>
  <div class="full">
    <section class="sec2">
      <h2>Here is our verified needs of help<br>Help us by donating to help them</h2>
      <div class="search-container">
        <input type="text" id="search-bar" placeholder="Search product by name...">
        <!-- <button type="button" >Search</button> -->
      </div>
      <img alt="nothing image" src="https://iili.io/JJwhZoG.gif" style="margin-left:300px;" width="880px">
      <h1 style="margin-left:30%; font-size:50px;" >Feature Not Available Yet</h1>
    </section>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>