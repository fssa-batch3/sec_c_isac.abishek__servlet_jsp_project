<!--  <nav>
<div class="side-nav">
    <a href="index.jsp"> <img src="assets/images/logo.png" width="250px" alt="image error"
        class="logoimg"></a>
    <ul class="navlinks">


      <li><a href="schemes.jsp"><i class="fa-solid fa-gift"></i>schemes</a></li>
      <li><a href="donationRequest.jsp"><i class="fa-solid fa-circle-dollar-to-slot"></i>donate</a>
      </li>
      <li><a href="about.jsp"><i class="fa-solid fa-users"></i>
          about
        </a></li>
      <li><a id="gethelplink"><i class="fa-solid fa-truck-medical"></i>gethelp</a></li>
      <li><a href="event.jsp"><i class="fa-solid fa-calendar-days"></i>offering</a></li>


      <li><a href="involve.jsp"><i class="fa-brands fa-superpowers"></i>get involved</a></li>
      <li><a id="inspiredlink"><i class="fa-solid fa-dragon"></i>be inspired</a></li>
      <li><a id="sign" ><i class="fa-solid fa-hospital-user"></i></a></li>
      <div class="active"></div>
    </ul>
  </div>
  </nav>-->
  <link rel="stylesheet" href="assets/css/navcommon.css">
 
  <nav>
    <div class="menu-bar">
      <img src="https://iili.io/HyFIhoQ.png" width="200px" alt="error">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="event.jsp">Offering</a></li>
        <li><a href="schemes.jsp">Schemes</a></li>
        <li><a href="donationRequest.jsp">Donate</a></li>
        <li><a href="about.jsp">About</a></li>
        <li><a id="gethelplink">Get Help</a>


        </li>


        <li><a href="involve.jsp">Get Involved</a></li>
        <li><a id="inspiredlink">Be Inspired</a></li>
        <li><a id="sign">Sign Up</a></li>
      </ul>
    </div>
  </nav>
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
        sign.innerText = "Profile"
        beinspired.setAttribute("href", "inspired.jsp");
    }
    else {
 
      
      gethelp.setAttribute("href", "login.jsp");
      sign.setAttribute("href", "login.jsp");
      beinspired.setAttribute("href", "login.jsp");

    }

    
  </script>
  </script>