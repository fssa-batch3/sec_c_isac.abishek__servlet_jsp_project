<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/involve.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="icon" href="assets/images/icon.png">
    <script
    src="https://kit.fontawesome.com/ee40c53027.js"
    crossorigin="anonymous"
    integrity="">
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
   
    <title>schemes</title>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main>
  <!-- content starts  -->
 
    <section>
        <div class="gethelpbg">
            <h1>SCHEMES</h1>
        </div>
    </section>
    <div class="full">
        <section class="sec1">
            <div class="volunteer">
                <h1>GOVERNMENT SCHEMES</h1>
                <p> Click the below button to know the government schemes available for you</p>
                    <a href="govt.jsp"><button class="join" id="bn1">View now</button></a>
            </div>
          <img src="assets/images/schemes.jpg" width="400px"  alt="error">
        </section><br>
        <section class="sec1">
            <img src="assets/images/suscces.jpg" width="400px" alt="error">
        <div class="donate">
            <h1>HOW TO APPLY</h1>
            <p>Click the below button to  know how to apply for the government schemes </p>
                <a href="apply.jsp"><button class="join" id="bn2">Click here</button></a>
        </div>
    </section>
    </div>
    </main>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>