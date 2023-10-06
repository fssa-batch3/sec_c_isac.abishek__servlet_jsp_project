<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/footer.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
<title>index page</title>
</head>
<body>
<!-- nav bar -->
  <nav>
    <div class="menu-bar">
      <img src="https://iili.io/HyFIhoQ.png" width="200px" alt="error">
      <ul>
        <li><a href="index.jsp">home</a></li>
        <li><a href="event.jsp">offering</a></li>
        <li><a href="schemes.jsp">schemes</a></li>
        <li><a href="donationRequest.jsp">donate</a></li>
        <li><a href="about.jsp">about</a></li>
        <li><a id="gethelplink">get help</a>


        </li>


        <li><a href="involve.jsp">get involved</a></li>
        <li><a id="inspiredlink">be inspired</a></li>
        <li><a id="sign">sign up</a></li>
      </ul>
    </div>
  </nav>
  <!-- body pages  -->
 
  <main id="data">
    <section class="main1">
      <div class="main1full">
        <h1>WELCOME TO FRESH TRUST</h1>
        <p>
          We are fresh trust for the people who are diffrently abled peoples</p>
        <p>Scroll down to see more about us</p>

      </div>
    </section>
    <section class="main2">
      <div class="main2full">
        <h1>About us</h1>
        <p>
          "Channeling the goodwill of communities & Bringing hope to people in need" <br> Click the learn more button to
          see about us</p>
        <br><a href="about.jsp"><button class="learn">LEARN MORE</button></a>
      </div>
    </section>

    <section class="main3">
      <div class="main3full">
        <h1>GET HELP</h1>
        <p> "The best advice I can give to anyone going through a rough patch is to never be afraid to ask for help."
        </p>
        <p>Do a patient login and see the get help features available for you</p>
        <br><a href="login.jsp"><button class="gethelp">GET HELP</button></a>
      </div>
    </section>
    <section class="main4">
      <div class="main4full">

        <h1>GET INVOLVED</h1>
        <p> “ when We Give Cheerfully And Accept Gratefully, Everyone Is Blessed.”</p>
        <p>Click here to join with us as volunteer and donate us </p>
        <br><a href="login.jsp"><button class="join">JOIN WITH US</button></a>
      </div>
    </section>
    <section class="main5">
      <div class="main5full">

        <h1>BE INSPIRED</h1>
        <p>
          “Show up, show up, show up, and after a while the muse shows up, too.”</p>
        <p>Click here to see latest motivational videos</p>
        <br><a href="login.jsp"><button class="join">SEE LATEST</button></a>
      </div>
    </section>
    <section class="main6">
      <div class="main6full">
        <h1>CONTACT</h1>
        <p> It's good hearts like you who inspire us to do what we do. Your comments, ideas and questions push us to<br>
        </p>
        <p>go that extra mile, every time. So drop us a line!</p>
        <br><a href="#footer"><button class="CONTACTS">get in touch</button></a>
      </div>
    </section>
  </main>
 
  <jsp:include page="footer.jsp"></jsp:include>
</body>
    <%
    
    HttpSession sess= request.getSession();
	String email=(String)sess.getAttribute("email");
    
    %>
<script>
        const arr1 = "<%= email %>";
    let gethelp = document.getElementById("gethelplink");
    let sign = document.getElementById("sign");
    let beinspired = document.getElementById("inspiredlink");

    if (arr1 !=="null") {

        gethelp.setAttribute("href", "gethelp.jsp");
        sign.setAttribute("href", "Profile.jsp");
        sign.innerText = "profile"
        beinspired.setAttribute("href", "inspired.jsp");
    }
    else {
 
      
      gethelp.setAttribute("href", "login.jsp");
      sign.setAttribute("href", "login.jsp");
      beinspired.setAttribute("href", "login.jsp");

    }

    
  </script>
  <input type="text" id="message">

 
</html>