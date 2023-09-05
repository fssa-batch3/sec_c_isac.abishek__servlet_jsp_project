<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.charitytrust.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

.container {
	width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

button[type="submit"] {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<h1>View Requests</h1>
	<table border="1">
		<thead>
			<tr>
				<th>Event Name</th>
				<th>Product Name</th>
				<th>Contact Number</th>
				<th>Request Registered Date</th>
				<th>Actions</th>
				
			</tr>
		</thead>

		<tbody>
			<!-- Replace the following block with actual data from your application -->

			<tr>
				<%
				boolean act = false;
				List<ProductRequest> productRequestList = (List<ProductRequest>) request.getAttribute("ProductRequest");
				if (productRequestList != null) {
					for (ProductRequest ele : productRequestList) {
				%>

				<td><%=ele.getEventName()%></td>
				<td><%=ele.getProductName()%></td>
				<td><%=ele.getMobileno()%></td>
				<td><%=ele.getRequestDateSQL()%></td>
				<td>
					<form method="post">
						<button type="submit" name="acceptButton" id="acceptButton">
							<a
								href="UpdateRequestServlet?isactive=true&mobileNo=<%=ele.getMobileno()%>">Accept</a>
						</button>
						<button type="submit" name="declineButton" id="declineButton">
							<a
								href="UpdateRequestServlet?isactive=false&mobileNo=<%=ele.getMobileno()%>">Decline</a>
						</button>
					</form>
				</td>
				
			</tr>
			<%
			}
			} else {
			%>
			<p>Null</p>
			<%
			}
			%>
			<!-- Add more rows as needed -->
		</tbody>
	</table>
</body>
<script>
	let act = false;
	function changeActValue(newValue) {
		act = newValue;
		console.log(act);
	}
	changeActValue(false);
</script>
</html>
