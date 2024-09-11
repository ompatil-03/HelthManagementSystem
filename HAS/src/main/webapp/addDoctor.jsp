<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Doctor</title>
    <link rel="stylesheet" type="text/css" href="/src/main/resources/static/css/styles.css">
</head>
<body class="bg-gray-200
 ">
    <div class="container">
        <h1>Add Doctor</h1>
        <div class="container mx-auto p-4">
        <h1 class="text-4xl font-bold text-center text-blue-600">Hello, Tailwind CSS!</h1>
        <p class="mt-4 text-lg text-gray-700">This is a sample page styled with Tailwind CSS.</p>
    </div>
        <form action="/addDoctor" method="post">
            <div class="form-group">
                <label for="name">Doctor Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="specialization">Specialization:</label>
                <input type="text" id="specialization" name="specialization" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Doctor</button>
        </form>
    </div>
</body>
</html>
