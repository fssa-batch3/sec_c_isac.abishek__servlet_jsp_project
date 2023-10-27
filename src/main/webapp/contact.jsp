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
  <img src="https://iili.io/JFDRTpp.gif" alt="contact us" width="800px">
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
   <script src="assets/js/contact.js"></script>
<script src="assets/js/screenreader.js"></script>
  <script src="assets/js/contentreader.js"></script>
    <script src="assets/js/autospeech.js"></script>
    <script src="assets/js/voicetotext.js"></script> 


  <script>
   let currentIndex = -1; // Initialize the current index for navigation.
  let  currenttag;
  let totalTagCount = 0;
  
  
  let cnts = -1;
  let tag;
  let tags_length=0;

    document.onkeydown = function (event) {
    // For nav bar
	  if (event.keyCode == 39) { // Right arrow key
    if (currentIndex < totalTagCount && currentIndex >= -1) { // total tag is intialy zero  after the first screenreader js return the value
      currentIndex++;
      console.log(currentIndex);
    }
    screenreader_selector(".menu-bar a", currentIndex, "You've reached the end. Press the left arrow to go back.");
  }

  if (event.keyCode == 37) { // Left arrow key
    if (currentIndex > -1) {
      currentIndex--;
    }
    screenreader_selector(".menu-bar a", currentIndex, "You are at the top. Press the right arrow to go down."); //screenreaderpage
  }

  if (event.keyCode == 13) { // Enter key
    let anchorTags = document.querySelectorAll(".menu-bar a");
    anchorTags[currentIndex].click();
  }
	  //nav bar ends
	  
    if (event.keyCode == 40) {
      if (cnts < tags_length && cnts >= -1) {
        cnts++;
        console.log(cnts)
      }
      screenreader_content("h3,button", cnts, "You reached the end") // contentreaderpage
     
    }
   
    if (event.keyCode == 38) {
      if (cnts > -1) {
        cnts--;
        console.log(cnts)
      }
      // console.log(cnt+": 2")
      screenreader_content("h3,button", cnts, "You are on the top")
      
    }
 
    if (event.keyCode == 16) {
      let contentanchor=document.querySelectorAll("h3,button")
      contentanchor[cnts].click();
    }
  
     // if (event.keyCode == 220) {
       // let messagevalue = document.getElementById("message").value
        //let speakmessagevalue  = new SpeechSynthesisUtterance(messagevalue);
        //speechSynthesis.speak(speakmessagevalue );

     // }

    };

  </script>


  <script>
    document.addEventListener('keydown', function (event) {
      if (event.keyCode >= 37 && event.keyCode <= 40) {
        event.preventDefault();
      }
    });


  </script>
   <script>
  document.addEventListener("DOMContentLoaded", e => {
    loader("Hi there now you are in contact page use up arrow and down arrow to navigate by hearing the command and Click the shift button to contact ")

  })

  document.addEventListener("dblclick", e => {
    loader("Hi there now you are in contact page use up arrow and down arrow to navigate by hearing the command and Click the shift button to contact")

  })
</script>
 

</html>