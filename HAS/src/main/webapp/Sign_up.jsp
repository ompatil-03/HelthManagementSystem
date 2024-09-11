<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Patient</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<h2>Register as a Patient</h2>
		<form action="/registerPatient" method="post">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" name="name" required>
			</div>

			<div class="form-group">
				<label for="city">City:</label> <input type="text"
					class="form-control" id="city" name="city" required>
			</div>


			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="password" required>
			</div>
			 <div class="form-group">
            <button type="submit" onclick="message()" >Register</button>
             <p class="form-group1">or else  have an account?</p>
             <button type="submit"onclick="redirectToLogin()">Login</button>
        </div>
		</form>
     <script>
        function redirectToLogin() 
        {
            window.location.href = 'Login.jsp';
        }
    </script>
    <script>
    function message()
    {
    	alert("Data Submited Sucessfully");
    }
    </script>
	</div>
</body>
</html>
