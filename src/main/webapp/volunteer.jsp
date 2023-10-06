<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/works.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="icon" href="assets/images/icon.png">
  <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="assets/css/navcommon.css">
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
  <script src="assets/js/sweetalert.min.js"></script>
<title>works</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<main>

    <div class="full tablework">
      <h1>18/12/22 WORKS AND AREAS</h1>
      <section class="sec2">
        <table>
          <caption>work</caption>
          <tr>
            <th>s.no</th>
            <th>place</th>
            <th>work</th>
            <th>time</th>

          </tr>
          <tr>


            <td>1</td>
            <td>Royapuram</td>
            <td>Sensus about differently abled peoples</td>
            <td>7-9am</td>
            <!-- <td><button class="join">avilable</button></td> -->

          </tr>
          <tr>

            <td>2</td>
            <td>Plavakam</td>
            <td>Sensus about differently abled peoples</td>
            <td>9-11am</td>
            <!-- <td><button class="join">avilable</button></td> -->

          </tr>
          <tr>

            <td>3</td>
            <td>Thiruvetriur</td>
            <td>Sensus about differently abled peoples</td>

            <td>12-2pm</td>
            <!-- <td><button class="join">avilable</button></td> -->

          </tr>
          <tr>
            <td>4</td>
            <td>Kasimedu</td>
            <td>Sensus about differently abled peoples</td>

            <td>2-4pm</td>
            <!-- <td><button class="join">avilable</button></td> -->

          </tr>
          <tr>

            <td>5</td>
            <td> tandairpet</td>
            <td>Sensus about differently abled peoples</td>

            <td>4-6pm</td>
            <!-- <td><button class="join">avilable</button></td> -->

          </tr>
          <tr>

            <td>6</td>
            <td>cross road</td>
            <td>Sensus about differently abled peoples</td>
            <td>6-8pm</td>
            <!-- <td><button class="join">avilable</button></td> -->

          </tr>
          <tr>

            <td>7</td>
            <td>washerment</td>
            <td>Sensus about differently abled peoples</td>
            <td>8-9pm</td>
            <!-- <td><button class="join">avilable</button></td> -->

          </tr>
        </table>
        <button type="submit" id="join">Data Entry</button>

    </div>
    <div class="datas" style="display: none;">

      <img src="assets/images/close.png" alt="close" width="30px" id="close">
      <h2>Your referal</h2>
      <input type="url" id="img" placeholder="image here"><br>
      <input type="text" id="name" placeholder="name here"><br>
      <input type="number" id="number" placeholder="number here"><br>
      <button id="submit_btn">submit</button>

    </div>
  </main>
</body>
<script>
const joinBtn = document.getElementById("join");
const closeImg = document.getElementById("close");
const dataForm = document.querySelector(".datas");

let submit = document.getElementById("submit_btn")

// Add click event listener to the button element
joinBtn.addEventListener("click", function () {
  // Show the form by setting the display style to "block"
  dataForm.style.display = "block";
});

// Add click event listener to the close image element
closeImg.addEventListener("click", function () {
  // Hide the form by setting the display style to "none"
  dataForm.style.display = "none";
});
</script>
</html>