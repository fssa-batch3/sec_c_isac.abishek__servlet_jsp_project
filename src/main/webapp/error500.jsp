<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/98f622c388.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="icon" href="assets/images/icon.png">
 
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700;900&display=swap" rel="stylesheet">
    <title>500 Internal Server Error</title>
    <style>
        /* Add any custom CSS styles here */
        body {
            text-align: center;
            background-color: #f2f2f2;
            font-family: 'Merienda', cursive;
        }

        .error-container {
            margin: auto;
            
            padding: 20px;
            background-color: #F8F5FF;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .error-image {
            max-width: 75%;
            height: auto;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <div class="error-container">
        <h1>500 Internal Server Error</h1>
        <p>Oops! Something went wrong on our server.</p>
        <img src="https://iili.io/Jf3ofKg.png" alt="500 Internal Server Error" class="error-image">
  
    </div>
 
</body>
</html>
