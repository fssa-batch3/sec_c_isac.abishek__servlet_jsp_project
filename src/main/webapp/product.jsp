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
<link rel="stylesheet" href="/charitytrust-webapp/assets/css/productview.css">
    
<meta charset="ISO-8859-1">
<title>product page</title>
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>

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
			
				<input type="text" id="search-bar" name="search"
					placeholder="Search product by name..." >
					
				
				
			</div>
			<section class="sec3">

          <%
      		
          String email =  (String)session.getAttribute("email");
          
          
		int id = Integer.parseInt(request.getParameter("id"));
          String name=(String) request.getParameter("EventName");
          List<ArrayList<String>> productList = (List<ArrayList<String>>) request.getAttribute("productList");
			if (productList != null) {
				for (ArrayList<String> ele : productList) {
			%>
				<div class="products">
					<img src="<%=ele.get(3) %>" alt="<%=ele.get(0) %>">
					<h1><%=ele.get(0) %></h1>
					<p><%=ele.get(2) %></p>
					
					
					
					<a href="contact.jsp?EventName=<%=name %>&productName=<%=ele.get(0) %>">
					<%
					
					if(email == null){
					%>
					<buttons class="join"><%=ele.get(0)%></button>
					<%
					}
					else{
					%>
					<buttons class="join">Book</button>
					<%
					}
					%>
					</a>
					
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

	<!--<input type="text" id="message" style="margin-left: 300px;">  -->
 <input type="text" id="message" style="margin-left: 300px;">
  
<jsp:include page="footer.jsp"></jsp:include>

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
      loader("Hi there now you are in product page use up arrow and down arrow to navigate by hearing the suitable product and Click the shift button to get product or say the product name after mic on")

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
      screenreader_content(".products a", cnts, "You reached the end") // contentreaderpage
     
    }
   
    if (event.keyCode == 38) {
      if (cnts > -1) {
        cnts--;
        console.log(cnts)
      }
      // console.log(cnt+": 2")
      screenreader_content(".products a", cnts, "You are on the top")
      
    }
 
    if (event.keyCode == 16) {
      let contentanchor=document.querySelectorAll(".products a")
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