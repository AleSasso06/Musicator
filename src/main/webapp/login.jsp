<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">

    	 <link rel="stylesheet" href="style2.css">   
<style>
       
         body {
            display: flex;       
            justify-content: center;  
            align-items: center;        
            height: 100vh;              
            margin: 0;                  
            background-color: #08263C;
            
            
             
        }
        .container {
            max-width: 500px;           
            padding: 20px;             
            margin: 0;                 
            background-color: white;    
            border-radius: 10px;        
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
        }
        
        .mb-3 {
            margin-bottom: 1rem; 
            text-align: center;   
        }
        .custom-btn {
            background-color: #C2185B;  
            color: white;               
            border: 2px solid #C2185B;  
            padding: 10px 20px;         
            border-radius: 10px;        
            font-weight: bold;          
        }

    </style>
</head>
<body>
<div class="container min-vh-100 d-flex justify-content-center align-items-center text-center">
    <div>
        <h1 class="mb-3">Login</h1>
        <form class="px-4 py-3" action="login" method="post">
            <div class="mb-3">
                <label for="exampleDropdownFormEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleDropdownFormEmail1" name="email" placeholder="email@example.com">
            </div>
            <div class="mb-3">
                <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleDropdownFormPassword1" name="password" placeholder="Password">
            </div>
            <div class="mb-3">
               <div class="d-flex justify-content-between align-items-center mb-3">
               </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck" name="remember">
                    <label class="form-check-label" for="dropdownCheck">Remember me</label>
                </div>
                <div class="text-end">
                    <a class="dropdown-item d-inline" href="sign-in.jsp">Non sei ancora registrato? Registrati!</a>
                    <a class="dropdown-item d-inline" href="#">Password dimenticata?</a>
                </div>
            </div>
            <div style="text-align: center;">
                <button type="submit" class="custom-btn">Login</button>
            </div>
        </form>
        <div class="dropdown-divider"></div>
    </div>
		</div>
		
    <script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>