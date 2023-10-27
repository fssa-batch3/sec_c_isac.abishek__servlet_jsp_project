<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap"
	rel="stylesheet">
<title>index page</title>
</head>
<body>
	<!-- nav bar -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- body pages  -->

	<main id="data">
		<section class="main1">
			<div class="main1full">
				<h1>WELCOME TO FRESH TRUST</h1>
				<p>We are fresh trust for the people who are diffrently abled
					peoples</p>
				<p>Scroll down to see more about us</p>

			</div>
		</section>
		<section class="main2">
			<div class="main2full">
				<h1>About us</h1>
				<p>
					"Channeling the goodwill of communities & Bringing hope to people
					in need" <br> Click the learn more button to see about us
				</p>
				<br> <a href="about.jsp"><button class="learn">LEARN
						MORE</button></a>
			</div>
		</section>

		<section class="main3">
			<div class="main3full">
				<h1>GET HELP</h1>
				<p>"The best advice I can give to anyone going through a rough
					patch is to never be afraid to ask for help."</p>
				<p>Do a patient login and see the get help features available
					for you</p>
				<br> <a href="login.jsp"><button class="gethelp">GET
						HELP</button></a>
			</div>
		</section>
		<section class="main4">
			<div class="main4full">

				<h1>GET INVOLVED</h1>
				<p>“ when We Give Cheerfully And Accept Gratefully, Everyone Is
					Blessed.”</p>
				<p>Click here to join with us as volunteer and donate us</p>
				<br> <a href="login.jsp"><button class="join">JOIN
						WITH US</button></a>
			</div>
		</section>
		<section class="main5">
			<div class="main5full">

				<h1>BE INSPIRED</h1>
				<p>“Show up, show up, show up, and after a while the muse shows
					up, too.”</p>
				<p>Click here to see latest motivational videos</p>
				<br> <a href="login.jsp"><button class="join">SEE
						LATEST</button></a>
			</div>
		</section>
		<section class="main6">
			<div class="main6full">
				<h1>CONTACT</h1>
				<p>
					It's good hearts like you who inspire us to do what we do. Your
					comments, ideas and questions push us to<br>
				</p>
				<p>go that extra mile, every time. So drop us a line!</p>
				<br> <a href="#footer"><button class="CONTACTS">get
						in touch</button></a>
			</div>
		</section>
	</main>

	<jsp:include page="footer.jsp"></jsp:include>
	<input type="text" id="message">
</body>
<%
HttpSession sess = request.getSession();
String email = (String) sess.getAttribute("email");
%>
<!-- FreshDesk -->
<!-- <script>
	window.fwSettings={
	'widget_id':1070000000656
	};
	!function(){if("function"!=typeof window.FreshworksWidget){var n=function(){n.q.push(arguments)};n.q=[],window.FreshworksWidget=n}}() 
</script>
<script type='text/javascript' src='https://ind-widget.freshworks.com/widgets/1070000000656.js' async defer></script>
<script
src='//in.fw-cdn.com/31484064/730359.js'
chat='true'> 
</script>-->

<script src="assets/js/voicenavigator.js"></script>
<script src="assets/js/autospeech.js"></script>
<!-- For starting welcome speech -->
<script src="assets/js/screenreader.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", e => {
      loader("Hi there welcome to freshtrust .Now you are in home page, click right arrow button to navigate to the Offering page. and press Enter to go into the Offering..or say offering after mic on")
    }) //sending this message to the auto speech js loader method
   


    document.addEventListener("dblclick", e => {
      loader("Hi there welcome to freshtrust .Now you are in home page, click right arrow button to navigate to the Offering page. and press Enter to go into the Offering. or say offering after mic on")
    })
    
    
 let currentIndex = -1; // Initialize the current index for navigation.
let totalTags;
let totalTagCount = 0;

// Handle keydown events for navigation.
document.onkeydown = function (event) {
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
    screenreader_selector(".menu-bar a", currentIndex, "You are at the top. Press the right arrow to go down.");
  }

  if (event.keyCode == 13) { // Enter key
    let anchorTags = document.querySelectorAll(".menu-bar a");
    anchorTags[currentIndex].click();
  }
}



  </script>

</html>