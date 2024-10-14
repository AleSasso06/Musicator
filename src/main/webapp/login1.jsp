<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            max-width: 500px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .mb3 {
            margin-bottom: 1rem;
            text-align: center;
        }

        .custom-btn {
            background-color: #C2185B; 
            color: white; 
            border: 2px solid #C2185B; 
            padding: 6px 15px; 
            border-radius: 10px; 
            font-weight: bold; 
            width: 100%; /* Imposta la larghezza al 100% */
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h1 class="mb3">Login</h1>
        <form class="px-4 py-3">
            <div class="mb-3">
                <label for="exampleDropdownFormEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com" required>
            </div>
            <div class="mb-3">
                <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password" required>
            </div>

            <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck">
                    <label class="form-check-label" for="dropdownCheck">Remember me</label>
                </div>
                <div class="ms-auto">
                    <a class="dropdown-item d-inline" href="#">Not registered yet? Register!</a>
                    <a class="dropdown-item d-inline ms-3" href="#">Forgot password?</a>
                </div>
            </div>

            <div class="text-center">
                <button type="submit" class="custom-btn">Sign in</button>
            </div>
        </form>
    </div>

    <script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>