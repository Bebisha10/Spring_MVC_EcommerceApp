<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>All Products Page</title>
	<style>
		/* Reset default styles */
		body, h1 {
			margin: 0;
			padding: 0;
		}

		body {
			font-family: 'Arial', sans-serif;
			background-color: #f9f9f9;
			color: #333;
			padding: 40px;
			text-align: center;
		}

		h1 {
			color: #007bff;
			margin-bottom: 80px;
			margin-top : 80px;
		}

		table {
			width: 90%;
			max-width: 1000px;
			margin: 0 auto;
			border-collapse: collapse;
			background-color: #ffffff;
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		}

		th, td {
			border: 1px solid #ddd;
			padding: 12px;
			text-align: left;
		}

		th {
			background-color: #007bff;
			color: white;
		}

		tr:nth-child(even) {
			background-color: #f2f2f2;
		}

		tr:hover {
			background-color: #f1f1f1;
		}

		td {
			vertical-align: middle;
		}

		td.action-buttons, th.action-header {
			text-align: center;
		}

		button {
			background-color: #28a745;
			color: white;
			border: none;
			padding: 8px 12px;
			border-radius: 4px;
			cursor: pointer;
			transition: background-color 0.3s;
		}

		button:hover {
			background-color: #218838;
		}

		a {
			text-decoration: none;
		}

		/* Container for centering the table */
		.container {
			max-width: 1200px;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<h1>Showing All Products</h1>
	<div class="container">
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Price</th>
				<th>Brand</th>
				<th>Rating</th>
				<th>Description</th>
				<th class="action-header" colspan="2">Action</th>
			</tr>

			<c:forEach var="p" items="${products}">
				<tr>
					<td>${p.getId()}</td>
					<td>${p.getName()}</td>
					<td>${p.getPrice()}</td>
					<td>${p.getBrand()}</td>
					<td>${p.getRating()}</td>
					<td>${p.getDescription()}</td>
					<td class="action-buttons"><a href="delete?id=${p.getId()}"><button>Delete</button></a></td>
					<td class="action-buttons"><a href="updatepage?id=${p.getId()}"><button>Update</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
