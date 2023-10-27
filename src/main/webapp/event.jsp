<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fssa.charitytrust.model.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Event page</title>
<link rel="stylesheet" href="/charitytrust-webapp/assets/css/event.css">

	<!-- <link rel="stylesheet"
	href="/charitytrust-webapp/assets/css/loading.css">-->
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
	<!-- <div class="checkbox">
    <label for="click" class="text">screen reader</label>
    <input type="checkbox" id="click" >

  </div> -->
	<!-- nav bar starts  -->
	<jsp:include page="header.jsp"></jsp:include>
	<section class="sec1">
		<div class="sec1h1 donationbg">

			<h1>Events</h1>
		</div>
	</section>
	<div class="full">
		<section class="sec2">
		<!--  <div class="loadingio-spinner-bean-eater-in5remcjt2b" id="loader2"><div class="ldio-l65k7hqbg6i">
<div><div></div><div></div><div></div></div><div><div></div><div></div><div></div></div>-->
</div></div>
		</section>
	</div>

	<input type="text" id="message">


	 <jsp:include page="footer.jsp"></jsp:include>
	 
</body>


<script src="assets/js/event.js"></script>
   <script src="assets/js/screenreader.js"></script>
  <script src="assets/js/contentreader.js"></script>
  <script src="assets/js/autospeech.js"></script>
  <script src="assets/js/voicenavigator.js"></script>
  <script>
  let currentIndex = -1; // Initialize the current index for navigation.
  let  currenttag;
  let totalTagCount = 0;
  
  
  let cnts = -1;
  let tag;
  let tags_length=0;
  
  document.addEventListener("DOMContentLoaded", e => {
      loader("Hi there now you are in event page use up arrow and down arrow to navigate by hearing the place nearby you and Click the shift button to get product or say the event name after mic on")

    })

    document.addEventListener("dblclick", e => {
      loader("Hi there now you are in product page use up arrow and down arrow to navigate by hearing the suitable product and Click the shift button to get product")

    })
    
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
      screenreader_content(".dropdown1 a,.contactholder p", cnts, "You reached the end") // contentreaderpage
     
    }
   
    if (event.keyCode == 38) {
      if (cnts > -1) {
        cnts--;
        console.log(cnts)
      }
      // console.log(cnt+": 2")
      screenreader_content(".dropdown1 a,.contactholder p", cnts, "You are on the top")
      
    }
 
    if (event.keyCode == 16) {
      let contentanchor=document.querySelectorAll(".dropdown1 a,.contactholder p")
      contentanchor[cnts].click();
    }
  
  };
  
  </script>
  
  
  <script>
      document.addEventListener('keydown', function(event) {
    if (event.keyCode >= 37 && event.keyCode <= 40) {
      event.preventDefault();
    }
  });
  
  
  </script>  
  



</html>