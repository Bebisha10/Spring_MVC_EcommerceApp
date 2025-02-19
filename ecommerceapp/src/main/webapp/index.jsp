<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index Page</title>
    <style>
        /* Reset some default styles */
        body, h1 {
            margin: 0;
            padding: 0;
        }

        body {
            margin-top:200px;
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #008000; /* Green text color */
            text-align: center;
            padding: 50px;
        }

        h1 {
            color: #008000;
        }
        #message{
        	color: #007bff;
        }
        a {
            margin-top : 30px;
            text-decoration: none;
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top : 30px;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Container for page content */
        .container {
            max-width: 600px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
	<h1 id="message">${msg}</h1><br><br>
    <div class="container">
        <h1>Welcome to our E-Commerce Application</h1>
        <a href="create.jsp"><button>Create Product</button></a>
        <a href="all"><button>View All Products</button></a>
    </div>
</body>
</html>
