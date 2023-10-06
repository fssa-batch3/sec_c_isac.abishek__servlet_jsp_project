<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact form</title>
<link rel="stylesheet" href="/charitytrust-webapp/assets/css/contact.css">
    <link rel="stylesheet" href="/charitytrust-webapp/assets/css/navcommon.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="assets/css/footer.css">
   <script type="text/javascript" src="assets/js/sweetalert.min.js"></script>
  <script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
</script>
<script type="text/javascript">
   (function(){
      emailjs.init("WaOX8jZPCkWsRW8cH");
   })();
</script>
</head>
<body>
<body>
  <!-- <div class="checkbox">
        <label for="click" class="text">screen reader</label>
        <input type="checkbox" id="click" >
  
      </div> -->

  <jsp:include page="header.jsp"></jsp:include>
  <div class="container">
    <form>
      <!-- onsubmit="sendemail(); reset(); return false;" -->

      <h3>Contact Us to Get Product On Event Days</h3>
      <!-- <img src="../../assets/images/donationrequest.jpg" alt=""> -->
         <%  String name=(String) request.getParameter("EventName");
             String productName=(String) request.getParameter("productName");  
         %>
      <input type="text" id="place" placeholder="place" name="place" value="<%=name%>" pattern="[A-Za-z ]+" disabled required>

      <input type="text" id="product" placeholder="productName" name="product" value="<%=productName%>" pattern="[A-Za-z ]+" disabled required>

      <input type="text" id="phone" placeholder="yourmobile" maxlength="10" minlength="10"
        title="mobile number must be 10 digit number" name="contactNumber" pattern="[0-9]{10}" required>
      <button type="button" id="voice">tell your contact number pressing shift </button>
      <button id="hear" type="button">Hear message</button>

      <button type="submit"  id="mail">send</button>

    </form>
  

  </div>
</body>
    <%
    
    HttpSession sess= request.getSession();
	String email=(String)sess.getAttribute("email");
    
    %>
     <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
   <script src="assets/js/contact.js"></script>

</html>