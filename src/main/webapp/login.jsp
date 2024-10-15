<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            background-color: #f0f0f0; 
        }
        .container {
            max-width: 500px;           
            padding: 20px;             
            margin: 0;                 
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
        }
    </style>
</head>
<body>
	<%@ include file="nav.jsp"%>
   <div class="container  min-vh-100 d-flex  justify-content-center  align-items-center">
        <h1 class="mb3">Login</h1> 
        <form class="px-4 py-3">
            <div class="mb-3">
                <label for="exampleDropdownFormEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
            </div>
            <div class="mb-3">
                <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
            </div>
            <div class="mb-3">
               <div class="d-flex justify-content-between align-items-center mb-3">
               </div>
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label" for="dropdownCheck">Remember me</label>
    </div>
 <div class="text-end">
     <a class="dropdown-item d-inline" href="#">Not registered yet? Register!</a>
    <a class="dropdown-item d-inline" href="#">Forgot password?</a>
</div>
</div>
          <div style="text-align: center;">
    <button type="button" class="custom-btn">Sign in</button>
</div>
        </form>
        <div class="dropdown-divider"></div>
      
        
    </div>
		
    <script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
