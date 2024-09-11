
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
   
    <link rel="stylesheet" type="text/css" href="/src/main/resources/static/css/styles.css">
   
</head>
<body>
    <div class="container bg-gray-200">
        <h1 class="text-3xl font-bold text-blue-500 bg-gray-400">Hello, Tailwind CSS!</h1>
        <h1 class="text-center">Login</h1>
        <form id="loginForm" action="/loginPatient" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
        <div id="alertBox" class="alert alert-danger" role="alert">
            Invalid email or password. Please try again.
        </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script>
        // Display the alert box only if there's a login error
        <% if (request.getAttribute("loginError") != null) { %>
            document.getElementById('alertBox').style.display = 'block';
        <% } %>
    </script>
</body>
</html>