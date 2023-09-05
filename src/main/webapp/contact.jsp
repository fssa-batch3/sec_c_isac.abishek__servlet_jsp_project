<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/charitytrust-webapp/assets/css/contact.css">
    <link rel="stylesheet" href="/charitytrust-webapp/assets/css/common.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
</head>
<body>
<body>
  <!-- <div class="checkbox">
        <label for="click" class="text">screen reader</label>
        <input type="checkbox" id="click" >
  
      </div> -->
  <div id="google_translate_element" class="translate"></div>

  <div class="side-nav">
    <a href="../../index.html"> <img src="../../assets/images/logo.png" width="250px" alt="image error"
        class="logoimg"></a>
    <ul class="navlinks">


      <li><a href="../about/schemes.html"><i class="fa-solid fa-gift"></i>schemes</a></li>
      <li><a href="../donarpages/donationrequest.html"><i class="fa-solid fa-circle-dollar-to-slot"></i>donate</a>
      </li>
      <li><a href="../about/aboutus.html"><i class="fa-solid fa-users"></i>
          <p>about</p>
        </a></li>
      <li><a id="gethelplink"><i class="fa-solid fa-truck-medical"></i>gethelp</a></li>
      <li><a href="../donarpages/place.html"><i class="fa-solid fa-calendar-days"></i>offering</a></li>


      <li><a href="../donarpages/involve.html"><i class="fa-brands fa-superpowers"></i>get involved</a></li>
      <li><a id="inspiredlink"><i class="fa-solid fa-dragon"></i>be inspired</a></li>
      <li><a id="myprofilelink"><i class="fa-solid fa-hospital-user"></i>your profile</a></li>
      <div class="active"></div>
    </ul>
  </div>
  <div class="container">
    <form method="post" action="AddRequestServlet">
      <!-- onsubmit="sendemail(); reset(); return false;" -->

      <h3>Contact Us to Get Product On Event Days</h3>
      <!-- <img src="../../assets/images/donationrequest.jpg" alt=""> -->

      <input type="text" id="name" placeholder="place" name="place">

      <input type="text" id="email" placeholder="emailid" name="product">

      <input type="text" id="phone" placeholder="yourmobile" maxlength="10"
        title="mobile number must be 10 digit number" name="contactNumber">
      <button type="button" id="voice">tell your contact number pressing shift </button>
      <button id="hear" type="button">Hear message</button>

      <button type="submit"  id="mail">send</button>

    </form>



  </div>
</body>
</html>