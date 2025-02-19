<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
    /* Reset and global styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Arial', sans-serif;
        background-color: #f9f9f9;
        color: #333;
        padding: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    h1 {
        color: #007bff;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 500px;
        width: 100%;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 8px;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
    }

    input[readonly] {
        background-color: #f1f1f1;
        color: #666;
    }

    button {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #218838;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h1>Update Product Details</h1>
        <form action="update">
            <label>Id</label>
            <input type="text" name="id" readonly="readonly" value="${p.getId()}">
            
            <label>Name</label>
            <input type="text" name="name" value="${p.getName()}" placeholder="Edit name here">
            
            <label>Price</label>
            <input type="text" name="price" value="${p.getPrice()}" placeholder="Edit price here">
            
            <label>Brand</label>
            <input type="text" name="brand" value="${p.getBrand()}" placeholder="Edit brand here">
            
            <label>Rating</label>
            <input type="text" name="rating" value="${p.getRating()}" placeholder="Edit rating here">
            
            <label>Description</label>
            <input type="text" name="description" value="${p.getDescription()}" placeholder="Edit description here">
            
            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
