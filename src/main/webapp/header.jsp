<nav>
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
  </nav>
  <%
    
    HttpSession sess= request.getSession();
	String email=(String)sess.getAttribute("email");

    %>
<script>
        const arr1 = "<%= email %>";
        console.log(arr1)
    let gethelp = document.getElementById("gethelplink");
    let sign = document.getElementById("sign");
    let beinspired = document.getElementById("inspiredlink");

    if (arr1 !=="null") {

        gethelp.setAttribute("href", "gethelp.jsp");
        sign.setAttribute("href", "Profile.jsp");
        sign.innerHTML += "your profile";
        beinspired.setAttribute("href", "inspired.jsp");
    }
    else {
 
      
      gethelp.setAttribute("href", "login.jsp");
      sign.setAttribute("href", "login.jsp");
      sign.innerHTML += "login";
      beinspired.setAttribute("href", "login.jsp");

    }

    
  </script>