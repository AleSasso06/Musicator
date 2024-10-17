<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Musicator - Login</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="style2.css">   
    
    
	<style>
		.container {
	            
	             margin-top:-80px;
	            margin-bottom: 50px;
	            max-width: 500px;           
	            padding: 70px;              
	            background-color: white;   
	            border-radius: 10px;    

	    }
	</style>
	</head>
	
	<body>
	
		<div class="container  min-vh-99 d-flex  justify-content-center  align-items-center">
		
			<form action="login" method="post">
					<h1 style= "text-align:center "class="mx-auto">Login</h1>
					
						
						<div class="form-row col-md-20">
							<img width="150px"  src="giradischi.png" class="rounded mx-auto d-block " alt= "...">
						</div>
						
						<div class="form-row col-md-20">
						    <label for="exampleDropdownFormEmail1" class="form-label">Email</label>
                			<input type="email" class="form-control" id="exampleDropdownFormEmail1" name="email" placeholder="email@example.com">
						</div>
						
						<div class="form-group col-md-20">
							<label class="mt-3" for="inputPassword4">Password</label>
							<input type="password" class="form-control" id="inputPassword4" name="password" required>
						</div>
						<!-- NON LO TOLGO NON SI SA MAI
						<div class="form-check">
	                    <input type="checkbox" class="form-check-input" id="dropdownCheck" name="remember">
	                    <label class="form-check-label" for="dropdownCheck">Remember me</label>
	                </div>
	                 -->
	                <br>
	                <div class="text-end">
	                    <a class="dropdown-item d-inline text-body-secondary" href="sign-in.jsp">Non sei ancora registrato? Registrati!</a>
	                </div>
						<button class="custom-register-btn mt-2" type="submit" >Login</button>
					</div>
			
			</form>
		</div>
		
		
    <script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>