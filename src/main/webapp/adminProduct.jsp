<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%@ page import="com.fssa.charitytrust.model.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Page</title>
<style>
/* Reset default margin and padding */
body, h1, h2, h3, p {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

/* Container styles */
.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

/* Table styles */
table {
    border-collapse: collapse;
    width: 100%;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

th, td {
    border: 1px solid #ccc;
    padding: 12px;
    text-align: left;
}

th {
    background: #6C3DD9;
    color: white;
    font-weight: bold;
}

img {
    max-width: 100px;
    max-height: 100px;
}

/* Button styles */
button {
    padding: 8px 12px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    background-color: #6C3DD9;
    color: white;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #0056b3;
}

/* Popup styles */
.popup {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
}

.popup-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

/* Button container */
.button-container {
    display: flex;
    justify-content: flex-end;
    margin-top: 10px;
}

/* Responsive styles */
@media screen and (max-width: 600px) {
    th, td {
        padding: 8px;
    }

    img {
        max-width: 80px;
        max-height: 80px;
    }

    .popup-content {
        width: 80%;
    }
}

</style>
</head>
<body>
	<h1>Admin Page</h1>
	<table>
		<thead>
			<tr>
				<th>Product Image</th>
				<th>Product Title</th>
				<th>Product Description</th>
				<th>Edit</th>
				<th>view products</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<%
			int id = Integer.parseInt(request.getParameter("id"));
			List<ArrayList<String>> productList = (List<ArrayList<String>>) request.getAttribute("productList");
			if (productList != null) {
				for (ArrayList<String> ele : productList) {
			%>
			<tr>
				<td><img src="<%=ele.get(3)%>" alt="Product 1"></td>
				<td><%=ele.get(0)%></td>
				<td><%=ele.get(2)%></td>
				<td><button onclick="openEditPopup()">Edit</button></td>
				<td><a href="EventServlet?event=event">
						<button type="submit">View Products</button>
				</a></td>
				<td><a href="DeleteProductServlet?name=<%=ele.get(0)%>&id=<%=id%>"><button>Delete</button></a></td>
			</tr>
			<%
			}
			} else {
			%>
			<p>Null</p>
			<%
			}
			%>
			<!-- Repeat the above <tr> structure for each product -->
		</tbody>
	</table>
	<div class="button-container">
		<button onclick="openEditPopup()">Add Product</button>

	</div>

	<!-- Edit Popup -->
	<div class="popup" id="editPopup">
		<div class="popup-content">
			<h2>Edit Product</h2>
			<form method="post" action="AddProductServlet?event=event">
				<label for="productname" id="title">productname</label>
				   <input type="text" id="productname" placeholder="productname" name="productname"> <br>
			    <label for="productdescription" id="title">productdescription</label>
			       <input type="text" id="productdescription" placeholder="productdescription" name="productdescription"><br>
			    <label for="Eventid" id="title">eventid</label>
				   <input type="text" id="eventid" placeholder="eventid" name="eventid"><br>
				<label for="productimgurl" id="title">productimgurl</label> 
				<input type="text" id="productimgurl" placeholder="bg" name="productimgurl"><br>
				<div class="button-container">
					
						<button type="submit">Submit</button>
					
					<button type="button" onclick="closeEditPopup()">Close</button>
				</div>
			</form>
		</div>
	</div>

	<script>
		function openEditPopup() {
			var popup = document.getElementById("editPopup");
			popup.style.display = "block";
		}

		function closeEditPopup() {
			var popup = document.getElementById("editPopup");
			popup.style.display = "none";
		}
	</script>
</body>
</html>
