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
   <a href="UpdateRequestServlet"><h1>See Requests</h1></a> 
	<table>
		<thead>
			<tr>
				<th>Event Image</th>
				<th>Event Title</th>

				<th>Event Location</th>
				<th>Event Description</th>
				<th>Event Date</th>
				<th>Contact</th>
				<th>Edit</th>
				<th>View products</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Event> eventList = (List<Event>) request.getAttribute("eventList");
			if (eventList != null) {
				for (Event ele : eventList) {
			%>
			<tr>
				<td><img src="<%=ele.getImageUrl()%>" alt="Event 1"></td>
				<td><%=ele.getEventName()%></td>
				<td><%=ele.getEventLocation()%></td>
				<td><%=ele.getAboutEvent()%></td>
				<td><%=ele.getEventDateSql()%></td>
				<td><%=ele.getContactNumber()%></td>
				<td><button onclick="openEditPopup()">Edit</button></td>
				<td><a href="ProductServlet?id=<%=ele.getEventId()%>"><button>
							View products in
							<%=ele.getEventName()%></button></a></td>
				<td><button>Delete</button></td>
			</tr>
			<%
			}
			} else {
			%>
			<p>Null</p>
			<%
			}
			%>
		</tbody>
	</table>
	<div class="button-container">
		<button>Add Event</button>

	</div>

	<!-- Edit Popup -->
	<div class="popup" id="editPopup">
		<div class="popup-content">
			<h2>Edit Event</h2>
			<form>
				<label for="editTitle">Event Title:</label> <input type="text"
					id="editTitle" name="editTitle"><br>
				<br> <label for="editDescription">Event Description:</label> <input
					type="text" id="editDescription" name="editDescription"><br>
				<br> <label for="editImage">Event Image URL:</label> <input
					type="text" id="editImage" name="editImage"><br>
				<br>
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
