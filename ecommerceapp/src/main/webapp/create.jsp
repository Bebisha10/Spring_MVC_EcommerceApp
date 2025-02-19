<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Product Page</title>
<style>
    /* Reset default styles */
    body, h1, form, label {
        margin: 0;
        padding: 0;
    }

    body {
    	margin-top:50px;
        font-family: 'Arial', sans-serif;
        background-color: #f9f9f9;
        color: #333;
        text-align: center;
        padding: 50px;
    }

    h1 {
        color: #007bff;
        margin-bottom:30px;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        font-weight: bold;
        margin: 10px 0 5px;
        text-align: left;
    }

    input[type="text"] {
        width: calc(100% - 40px); /* Adding some padding from the right side */
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        padding-right: 20px;
    }

    button {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 10px 15px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        width: 100%;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #218838;
    }

    /* Form container */
    .form-container {
        text-align: left;
    }
</style>
</head>
<body>
	<h1>Enter Product Details</h1>
	
	<form action="saveproduct">
		<div class="form-container">
			<label>Name</label>
			<input type="text" name="name" placeholder="Enter name here">
			
			<label>Price</label>
			<input type="text" name="price" placeholder="Enter price here">
			
			<label>Brand</label>
			<input type="text" name="brand" placeholder="Enter brand here">
			
			<label>Rating</label>
			<input type="text" name="rating" placeholder="Enter rating here">
			
			<label>Description</label>
			<input type="text" name="description" placeholder="Enter description here">
			
			<button type="submit">Create</button>
		</div>
	</form>
</body>
</html>
