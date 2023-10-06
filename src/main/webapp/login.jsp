<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <title>Login & Registration Form</title>
    <link rel="stylesheet"
	href="/charitytrust-webapp/assets/css/navcommon.css">
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://kit.fontawesome.com/98f622c388.js"
	crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/signup.css">
    <script src="assets/js/sweetalert.min.js"></script>

</head>

<body>

    
<jsp:include page="header.jsp"></jsp:include>
    <div class="hero">
   <!-- <div class="loader">
     <img alt="" src="assets/images/loading.gif">
     </div>  --> 
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
           

                <button type="button" class="toggle-btn" id="LoginBtn">Log In</button>
                
                <button type="button" class="toggle-btn" id="RegisterBtn">Register</button>
                
            </div>
            <!-- login contents -->

            <form id="login" class="input-group" action="LoginServlet">
                <h1 class="vollogin">login</h1>

                <input type="text" class="input-field" placeholder="User Email" id="logemail" name="loginEmail" required />
                <input type="password" class="input-field" placeholder="Enter Password" id="logpassword" name="loginPassword"  required />
                  
                <button type="submit" class="submit-btn">Log In</button>
                <img src="assets/images/login2.jpg" width="400px" alt="img error">
            </form>
            <!-- registe cotent  -->
            <form id="register" class="input-group" >

                <h2 class="volreg">&nbsp; &nbsp; &nbsp; &nbsp;register</h2>

                <input type="text" class="input-field" placeholder="User name(Alphabets)" title="name must only in alphabets maximum 50 charcters"
                    required id="name" pattern="[a-zA-Z]+" name="name" onkeypress="if (!((event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122)|| event.charCode === 13)) { event.preventDefault(); alert('Numbers or Special charcter are not allowed'); }" maxlength="49"
/>
                <input type="text" class="input-field" placeholder="mobile number(numbers)" pattern="^[6-9]{1}[0-9]{9}$" onkeypress="if (!((event.charCode >= 48 && event.charCode <= 57)|| event.charCode === 13)) { event.preventDefault(); alert('Alphabets or Special charcter are not allowed'); }" maxlength="10"
                    required id="mobileno" title="mobile number must be 10 digit number start with 6,7,8,9" name="contact"/>
                <!--  <input type="text" class="input-field" placeholder="aadhar number"  required
                    id="aadhar" title="aadhar number must be 12 digit number" name="aadhaar" pattern="[0-9]\d*" maxlength="12" />-->
                <input type="text" class="input-field" placeholder="pincode(numbers)" required id="address" name="address" pattern="\d{6}"  onkeypress="if (!((event.charCode >= 48 && event.charCode <= 57)|| event.charCode === 13)) { event.preventDefault(); alert('Alphabets or Special charcter are not allowed'); }" title="Enter a 6-digit PIN code" maxlength="6" />
                <input type="email" class="input-field" placeholder="Enter Email" required id="email" name="email" pattern="/^(?=.{1,44}$)[A-Za-z0-9._%+-]+@[A-Za-z.-]+\.[A-Za-z]{2,}$/" onkeypress="if (!((event.charCode >= 48 && event.charCode <= 57) || (event.charCode >= 65 && event.charCode <= 90) || (event.charCode >= 97 && event.charCode <= 122) || event.charCode === 46 || event.charCode === 13 || event.charCode === 45 ||  event.charCode === 95 ||event.charCode === 64)) { event.preventDefault(); alert('Only numbers, alphabets, dots,-,_ and Enter key are allowed'); }" maxlength=44 title="Enter valid email with maximum 44 charectes dots,-,_" />
                <label for="volunteer"><input type="radio" name="type" id="volunteer" value="VOLUNTEER" required> Volunteer</label>
                <label for="user"><input type="radio" name="type" id="user" value="USER">User</label><br>
                
               <!--  <input type="text" class="input-field" placeholder="key" title="key must only in alphabets"
                    required id="key" pattern="[a-zA-Z]+" name="key" disabled/> -->
                <input type="password" class="input-field" placeholder="Enter Password" name="pass"
                    title="password must contain 8 to 20 charcters with one symbol,one Capital and no spaces" required id="password"
                     pattern="^(?=.*[A-Z])(?=.*[\W])(?!.*\s).{8,20}$"/>
                <input type="password" class="input-field" placeholder="Enter Password" required id="confirmpassword" name="confirmPass" />
                <input type="checkbox" name="password" id="showpassword">show password
                <button type="submit" class="submit-btn">Register</button>
            </form>


        </div>
    </div>
    <!-- java script starts  -->
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="assets/js/Login.js"></script>
    
           
      
        
       
  
    
</body>

</html>