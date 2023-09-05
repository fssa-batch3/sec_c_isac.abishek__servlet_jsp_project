    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.*"%>
	
<%@ page import="com.fssa.charitytrust.model.*"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/charitytrust-webapp/assets/css/product.css">
    <link rel="stylesheet" href="/charitytrust-webapp/assets/css/common.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<nav>
		<div class="side-nav">
			<a href="../../index.html"> <img
				src="../../assets/images/logo.png" width="250px" alt="image error"
				class="logoimg"></a>
			<ul class="navlinks">


				<li><a href="../about/schemes.html"><i
						class="fa-solid fa-gift"></i>schemes</a></li>
				<li><a href="../donarpages/donationrequest.html"><i
						class="fa-solid fa-circle-dollar-to-slot"></i>donate</a></li>
				<li><a href="../about/aboutus.html"><i
						class="fa-solid fa-users"></i>
						<p>about</p> </a></li>
				<li><a id="gethelplink" href="../patientpages/gethelp.html"><i
						class="fa-solid fa-truck-medical"></i>get help</a></li>
				<li><a href="../donarpages/place.html"><i
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

	<main>


		<div class="gethelpbg">
			<h1>buy products</h1>



		</div>
		<div class="full">
			<section class="sec2">
				<h2>
					Here you can buy the products .<br>Here the list of products
					which is we collabed with shops<br> You can get products free
					and low cost
				</h2>
			</section>
			<div class="search-container">
				<input type="text" id="search-bar"
					placeholder="Search product by name...">
				<button type="button" id="search-btn">Search</button>
			</div>
			<section class="sec3">

          <%
          List<ArrayList<String>> productList = (List<ArrayList<String>>) request.getAttribute("productList");
			if (productList != null) {
				for (ArrayList<String> ele : productList) {
			%>
				<div class="products">
					<img src="<%=ele.get(3) %>" alt="magnifier image">
					<h1><%=ele.get(0) %></h1>
					<p><%=ele.get(2) %></p>
					<a href="contact.html"><button
							class="join"><%=ele.get(0) %></button></a>
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
	</main>

	<!-- footer  -->
	<footer id="footer">
		<div class="foot1">
			<img src="../../assets/images/logo.png" width="180px"
				alt="image error">
			<div class="fb">

				<a href=""> <img src="../../assets/images/facebook.png"
					width="45px" alt="image error"></a> <a href=""> <img
					src="../../assets/images/youtube.png" width="45px"
					alt="image error"></a> <a href=""> <img
					src="../../assets/images/insta.png" width="45px" alt="image error"></a>
				<a href=""> <img src="../../assets/images/mail.png" width="45px"
					alt="image error"></a> <a href=""> <img
					src="../../assets/images/whatsapp.png" width="45px"
					alt="image error"></a>
			</div>
		</div>


		<div class="foot3">
			<div class="add">
				<h4>FRESHTRUST:</h4>

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
	<!--<input type="text" id="message" style="margin-left: 300px;">  -->



</body>
<script>
let searchbox = document.getElementById("search-bar")

let ret;
let item;
searchbox.addEventListener("input", (e) => {
  let word = e.target.value.toLowerCase();
  let dic = document.querySelectorAll(".products");
  dic.forEach(ex => {
    let child = ex.children[1].textContent.toLocaleLowerCase();
    if (child.startsWith(word)) {

      ex.style.display = "block"

    }
    else {
      ex.style.display = "none"

    }
  })
})
</script>
</html>