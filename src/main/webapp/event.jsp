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
<link rel="stylesheet"
	href="/charitytrust-webapp/assets/css/navcommon.css">
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
		<section class="sec2"></section>
	</div>

	<!--<input type="text" id="message" style="margin-left: 400px;">  -->


	<jsp:include page="footer.jsp"></jsp:include>
</body>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
          sec2=document.querySelector(".sec2");
          sec2.innerHTML=`<h3>Loading..</h2>`;
   const url = "http://localhost:8080/charitytrust-webapp/EventServlet";
   axios.get(url)
   .then(function (response) {
// handle success
    console.log(response.data);
    sec2.innerHTML="";
   getEvent(response.data);

  })
  .catch(function (error) {
// handle error
  console.log(error);
  })

		
   
    function getEvent(new_request){
   


      new_request.forEach((e)=>{
    	  console.log(e.eventLocation);
      //  <div class="hos1"></div>
      div_requests = document.createElement("div");
      div_requests.setAttribute("class", "hos1");

      // <img src="../../assets/images/apollo-hospital-image.jpg" width="500px" alt="apollo-hospital-image">
      img = document.createElement("img");
      
      img.setAttribute("src", e["imageUrl"]);
      img.setAttribute("width", "300px");
      img.setAttribute("height", "200px");
      div_requests.append(img);

    


      //  <p></p> 


      contact_holder = document.createElement("div")
      contact_holder.setAttribute("class", "contactholder")
      div_requests.append(contact_holder)


      request_title = document.createElement("p");
      request_title.setAttribute("class", "addressp");
      // request_title.setAttribute("width","300px");
      request_title.innerHTML ="<span>Name</span>:- "+e["eventName"];
      contact_holder.append(request_title);

      request_title = document.createElement("p");
      request_title.setAttribute("class", "addressp");
      // request_title.setAttribute("width","300px");
      request_title.innerHTML ="<span>Place</span>:- "+e["eventLocation"];
      contact_holder.append(request_title);

      about_request = document.createElement("p");
      about_request.setAttribute("class", "addressp");
      about_request.innerHTML = "<span>About</span>:- "+e["aboutEvent"];
      contact_holder.append(about_request);
          

      

      requested_by = document.createElement("p");
      requested_by.setAttribute("class", "addressp");
      requested_by.innerHTML ="<span>Event date</span>:- "+ e["eventDateSql"];
      contact_holder.append(requested_by);

      address = document.createElement("p");
      address.setAttribute("class", "addressp");
      address.innerHTML = "<span>contact</span>:- "+e["contactNumber"];
      contact_holder.append(address);


      // div class dropdown-menu1
      dropdown1 = document.createElement("div");
      dropdown1.setAttribute("class", "dropdown1");
      div_requests.append(dropdown1);


      a1 = document.createElement("a");
     
      a1.setAttribute("href", "ProductServlet?id="+e["eventId"]+"&event=event&EventName="+e["eventName"])
      
     
      a1.setAttribute("id", "cont");
      a1.innerText ="view product"
      dropdown1.append(a1)
      //    button class join 
      // button = document.createElement("button");
      // button.setAttribute("class", "join");
      // button.innerText =e["place_title"]
      // a1.append(button);
      document.querySelector(".sec2").append(div_requests);
      });
    }
    
   



</script>
 
  



</html>