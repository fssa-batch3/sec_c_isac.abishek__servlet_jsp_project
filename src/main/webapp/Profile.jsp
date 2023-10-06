<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="/charitytrust-webapp/assets/css/navcommon.css">
  <link rel="stylesheet" href="/charitytrust-webapp/assets/css/profile.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">

<link
	href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap"
	rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://kit.fontawesome.com/98f622c388.js"
	crossorigin="anonymous"></script>
	 <link rel="stylesheet" href="assets/css/header.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <div class="profile">
  <div class="imgcontainer">
   
    <img src="/charitytrust-webapp/assets/images/aniyuki-sad-anime-avatar-image-32.jpg" alt="" width="200px" >
    <div class="name name1">
      <form id="form">
      <i class="fa-solid fa-signature profileicons"></i> <label for="user_name">name : </label>
      <br>
      <input type="text" id="user_name" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"  disabled>
      <br><br><i class="fa-solid fa-signature profileicons"></i> <label for="accessblity">accessblity </label>
      <br>
      <input type="checkbox" id="accessblity" disabled>
     
      <!-- <p id="user_name">isaxc</p> -->
  </div>
  
</div>
  <div class="main">
    <div class="name2 name">
    <i class="fa-solid fa-mobile-screen profileicons"></i><label for="mobile_no">mobile_no : </label><br>
   <input type="text" id="mobile_no" pattern="[0-9]\d*" maxlength="10" onkeypress="return event.charCode >= 48 && event.charCode <= 57"  disabled><br><br>
    <!-- <p id="mobile_no"></p> -->
    <!--<i class="fa-solid fa-id-card profileicons"></i><label for="addhar">addhar : </label><br>
    <!--<input type="text" id="addhar" pattern="[0-9]{12,12}+" onkeypress="return event.charCode >= 48 && event.charCode <= 57" disabled><br><br>-->
    <i class="fa-solid fa-id-card profileicons"></i><label for="addhar">role : </label><br>
    <input type="text" id="role" disabled><br><br>
    <!-- <p id="addhar"></p> -->
     <i class="fa-solid fa-envelope profileicons"></i><label for="email">email : </label><br>
    <input type="text" id="email"disabled><br><br>
    <!-- <p id="email"></p> -->
   <i class="fa-solid fa-location-dot profileicons"></i><label for="address">address : </label><br>
    <input type="text" id="address" disabled><br><br>
    <!-- <p id="address"></p> -->
    </div>
    
     
     <button id="edit_btn" >edit</button>
     <!-- <a href="pages/../index.html"><button id="logoutbtn">logout</button></a> -->
     <button id="deletebtn">log out</button>
    </form>
    <button id="activity" style="font-size: 11px;">My activities</button>

   </div>
 </div>
 <input type="text" id="message" style="margin-left: 300px;">
 <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
 <script src="/charitytrust-webapp/assets/js/profile.js"></script>
 <script src="./assets/js/EditProfile.js"></script>
 <script src="/charitytrust-webapp/assets/js/LogOut.js"></script>
  <script src="/charitytrust-webapp/assets/js/sendContact.js"></script>
 
</body>
</html>