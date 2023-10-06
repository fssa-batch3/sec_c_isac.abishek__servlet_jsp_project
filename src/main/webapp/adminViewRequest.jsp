<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.charitytrust.model.*"%>

	<head>
       <script src="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/suryaumapathy2812/notify__js/notify.css">
    </head>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Page</title>
<style>
body {
    font-family: Arial, sans-serif;
}

h1 {
    text-align: center;
    margin-top: 20px;
    color: #333;
}

table {
    border-collapse: collapse;
    width: 100%;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 12px;
    text-align: left;
}

thead {
    background-color: #f2f2f2;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

tbody tr:hover {
    background-color: #ddd;
}
button{
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}

th {
    background-color: #333;
    color: white;
}

/* Add more specific styling if needed for the "Actions" and "Status" columns */

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
				<th>Status</th>
			</tr>
		</thead>

		<tbody>
			<!-- Replace the following block with actual data from your application -->

			
			<!-- Add more rows as needed -->
		</tbody>
	</table>
</body>
 <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
 <script src="/charitytrust-webapp/assets/js/AcceptDecline.js"></script>
</html>