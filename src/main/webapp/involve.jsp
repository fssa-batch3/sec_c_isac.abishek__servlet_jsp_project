<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/involve.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="icon" href="assets/images/icon.png">
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">

  <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
  
  <script src="assets/js/sweetalert.min.js"></script>
  
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main>

    <!-- content starts  -->
    <section>
      <div class="gethelpbg involvebg">
        <h1>BE INVOLVED
        </h1>
      </div>
    </section>
    <div class="full">
      <section class="sec1">
        <div class="volunteer">
          <h1>BE A
            VOLUNTEER</h1>
          <p>
            Volunteering is basically providing services with a free will, without any expectation.<br> Volunteering is
            viewed as a significant means to involve people to contribute their<br> resources and skills in the process
            of development of the society.
            Volunteering is simple.<br> It’s about giving your time to do something useful, without getting paid. In
            return you get<br> the satisfaction of time and effort well spent.<br>
          </p>
          <!-- <a href="../volunteerpages/signup.html"> -->
          <a id="join1"><button class="join" id="crtact">Create account</button></a>
          <!-- </a> -->
        </div>
        <img src="assets/images/buyproducts.jpg" width="600px" alt="error">
      </section><br>
      <section class="sec1">
        <img src="assets/images/donate1.jpg" width="500px" alt="error">
        <div class="donate">
          <h1>Volunteer Works</h1>
          <p>volunteering can be a way to meet new people, learn new skills,<br> and gain useful experienceThe
            opportunities are huge. There is something<br> that you can do with whatever skills and experience you have.
            The best way<br> to see what is available is to contact us.
            The biggest problem for many people is finding<br> the time to volunteer. It can reduce your choices if you
            don’t have much time to spare,<br> but many busy people do find suitable opportunities.</p>

          <a id="join1"><button class="join" id="seewrks">See Works</button></a>

        </div>
      </section>
    </div>
    </main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>