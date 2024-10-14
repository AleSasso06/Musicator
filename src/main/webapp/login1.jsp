<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
<<<<<<< HEAD
    <link rel="stylesheet" href="style.css">
=======
	
    <link rel="stylesheet" href="style.css">   
>>>>>>> refs/heads/Front-end
    <style>
        body {
<<<<<<< HEAD
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
=======
            display: flex;              
            justify-content: center;    
            align-items: center;       
            height: 100vh;             
            margin: 0;                 
>>>>>>> refs/heads/Front-end
        }
<<<<<<< HEAD

        .login-container {
            max-width: 500px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
=======
        .container {
            max-width: 500px;           
            padding: 20px;             
            margin: 0;                 
            background-color: white;    
            border-radius: 10px;        
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
>>>>>>> refs/heads/Front-end
        }
<<<<<<< HEAD

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
=======
        .mb-3 {
            margin-bottom: 1rem; 
            text-align: center;   
>>>>>>> refs/heads/Front-end
        }
    </style>
</head>
<body>
<<<<<<< HEAD

    <div class="login-container">
        <h1 class="mb3">Login</h1>
=======
<%@ include file="nav.jsp" %> 
    <div class="container">
        <h1 class="mb-3">Login</h1> 
>>>>>>> refs/heads/Front-end
        <form class="px-4 py-3">
            <div class="mb-3">
                <label for="exampleDropdownFormEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com" required>
            </div>
            <div class="mb-3">
                <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password" required>
            </div>
<<<<<<< HEAD

            <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck">
                    <label class="form-check-label" for="dropdownCheck">Remember me</label>
                </div>
                <div class="ms-auto">
                    <a class="dropdown-item d-inline" href="#">Not registered yet? Register!</a>
                    <a class="dropdown-item d-inline ms-3" href="#">Forgot password?</a>
                </div>
=======
            <div class="form-check mb-3">
                <input type="checkbox" class="form-check-input" id="dropdownCheck">
                <label class="form-check-label" for="dropdownCheck">Remember me</label>
>>>>>>> refs/heads/Front-end
            </div>
<<<<<<< HEAD

            <div class="text-center">
                <button type="submit" class="custom-btn">Sign in</button>
=======
            <div class="d-flex justify-content-between align-items-center mb-3">
                <a class="dropdown-item d-inline" href="#">Not registered yet? Register!</a>
                <a class="dropdown-item d-inline ms-3" href="#">Forgot password?</a>
            </div>
            <div style="text-align: center;">
                <button type="submit" class="btn btn-primary">Sign in</button> 
>>>>>>> refs/heads/Front-end
            </div>
        </form>
<<<<<<< HEAD
=======
        <div class="dropdown-divider"></div>
>>>>>>> refs/heads/Front-end
    </div>
<<<<<<< HEAD

=======
		
>>>>>>> refs/heads/Front-end
    <script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>