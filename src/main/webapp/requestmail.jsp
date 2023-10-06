<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/contact.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="assets/css/navcommon.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
    <link rel="icon" href="assets/images/icon.png">
    <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
  
    <script src="assets/js/sweetalert.min.js"></script>
    <title>gethelp</title>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form >
    <!-- onsubmit="sendemail(); reset(); return false;" -->
    
    <h3>get in touch</h3>
    <!-- <div class="flex"> -->
    <!-- <img src="../../assets/images/donationrequest.jpg" alt="" width="200px" > -->
    <!-- <div class="inputs"> -->
    <input type="text" id="name" placeholder="yourname" required pattern="[a-zA-Z]+" title="name must only in alphabets">
    <input type="text" id="request" placeholder="donationrequest title" required pattern="[a-zA-Z]+" title="name must only in alphabets">
    <input type="text" id="phone" placeholder="yourmobile" required pattern="[0-9]\d*" maxlength="10" title="mobile number must be 10 digit number">
    <textarea name="message" id="message" rows="4" placeholder="about your request" required></textarea>
<!-- </div> -->
<!-- </div> -->
<button type="button" id="voice">Speak about yourself to help you and slash button recall it</button>
    <button id="hear" type="button">Hear message</button>
    <button type="submit">send</button>
</form>
    </div>

</body>
</html>