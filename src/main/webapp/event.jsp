<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fssa.charitytrust.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/charitytrust-webapp/assets/css/event.css">
    <link rel="stylesheet" href="/charitytrust-webapp/assets/css/common.css">
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
	<nav>

		<div class="side-nav">
			<a href="../../index.html"> <img
				src="https://iili.io/HyFIhoQ.png" width="250px" alt="image error"
				class="logoimg"></a>
			<ul class="navlinks">


				<li><a href="../about/schemes.html"><i
						class="fa-solid fa-gift"></i>schemes</a></li>
				<li><a href="donationrequest.html"><i
						class="fa-solid fa-circle-dollar-to-slot"></i>donate</a></li>
				<li><a href="../about/aboutus.html"><i
						class="fa-solid fa-users"></i>
						<p>About</p> </a></li>
				<li><a id="gethelplink" href="../patientpages/gethelp.html"><i
						class="fa-solid fa-truck-medical"></i>get help</a></li>
				<li><a href="place.html"><i
						class="fa-solid fa-calendar-days"></i>offering</a></li>

				<li><a href="../donarpages/involve.html"><i
						class="fa-brands fa-superpowers"></i>get involved</a></li>
				<li><a id="inspiredlink" href="../beinspired/inspire.html"><i
						class="fa-solid fa-dragon"></i>be inspired</a></li>
				<li><a id="myprofilelink" href="../about/profile.html"><i
						class="fa-solid fa-hospital-user"></i>your profile</a></li>
				<div class="active"></div>
			</ul>
		</div>
	</nav>
	<section class="sec1">
		<div class="sec1h1 donationbg">
			<a href="donationmail.html">
				<button class="join pointer">request donation now</button>
			</a>
			<h1>Events</h1>
		</div>
	</section>
	<div class="full">
		<section class="sec2">
			<h2>
				Here is our verified needs of help<br>Help us by donating to
				help them
			</h2>
			<div class="search-container">
				<input type="text" id="search-bar"
					placeholder="Search product by name...">
				<!-- <button type="button" >Search</button> -->
			</div>
			<%
			List<Event> eventList = (List<Event>) request.getAttribute("eventList");
			if (eventList != null) {
				for (Event ele : eventList) {
			%>
			<div class="hos1">
				<img src="<%=ele.getImageUrl()%>" alt="marina beach" width="300px"
					height="200px">
				<div class="contactholder">
					<p class="addressp">
						<span>Event Name</span>:- <span><%=ele.getEventName()%></span>
					</p>
					<p class="addressp">
						<span>Place</span>:- <span><%=ele.getEventLocation()%></span>
					</p>
					<p class="addressp">
						<span>About</span>:-
						<%=ele.getAboutEvent()%>
					</p>
					<p class="addressp">
						<span>Event date</span>:-
						<%=ele.getEventDateSql()%>
					</p>
					<p class="addressp">
						<span>contact</span>:-
						<%=ele.getContactNumber()%>
					</p>
				</div>
				<div class="dropdown1">
					<a href="ProductServlet?id=<%=ele.getEventId()%>&event=event"
						id="cont"><%=ele.getEventName()%></a>
				</div>
			</div>

			<%
			}
			} else {
			%>
			<p>Null</p>
			<%
			}
			%>

		</section>
	</div>
	<!-- footer starts  -->
	<footer id="footer">
		<div class="foot1">
			<img src="../../assets/images/logo.png" width="180px"
				alt="apollo-hospital-image" class="icon">
			<div class="fb">

				<a href=""> <img src="../../assets/images/facebook.png"
					width="45px" alt="fb"></a> <a href=""> <img
					src="../../assets/images/youtube.png" width="45px" alt="youtube"></a>
				<a href=""> <img src="../../assets/images/insta.png"
					width="45px" alt="insta"></a> <a href=""> <img
					src="../../assets/images/mail.png" width="45px" alt="mail"></a> <a
					href=""> <img src="../../assets/images/whatsapp.png"
					width="45px" alt="watsap"></a>
			</div>
		</div>


		<div class="foot3">
			<div class="add">
				<h3>FRESHTRUST:</h3>

				<p>
					Sathyadev Ave, opp.<br> Chettinad Vidyashram, MRC Nagar<br>
					Raja Annamalai Puram,<br> Chennai, Tamil Nadu 600028
				</p>
			</div>
			<div class="mail">
				<h4>Phone numbers: (11.00 AM to 7.00 PM)</h4>
				<p>
					+91-123456789<br> +91-123456789 <br>Email:
					isacdevaabishek@gamil.com
				</p>
			</div>
		</div>
		<div class="foot2">
			<div class="foot2p">
				<p>©2022</p>
			</div>
			<div class="foot22p">
				<p>HELP</p>
				<p>DONATE</p>
				<p>BLESSED</p>

			</div>
		</div>
	</footer>
	<!--<input type="text" id="message" style="margin-left: 400px;">  -->



</body>
<script>
let searchbox = document.getElementById("search-bar")

let ret;
    let item;
    searchbox.addEventListener("input",(e)=>{
     let word=e.target.value.toLowerCase();
     let dic=document.querySelectorAll(".hos1");
     dic.forEach(ex=>{
      let child=ex.children[1].children[0].children[1].textContent.toLocaleLowerCase();
      if (child.startsWith(word)){
       
        ex.style.display="flex"
       
      }
      else{
        ex.style.display="none"

      }
     })
    })
</script>
</html>