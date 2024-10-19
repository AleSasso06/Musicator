<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Musicator - Login</title>
   	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />  
    
    
	<style>
		.container-lg {
	            
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

	
	 
	 
	<div class="container-lg">
		<div class="container  min-vh-99 d-flex  justify-content-center  align-items-center">
		
			<form action="login" method="post">
					<h1 style= "text-align:center "class="mx-auto">Login</h1>
					
						
						<div class="form-row col-md-20">
							<a href="welcome">
								<img width="150px"  src="giradischi.png" class="rounded mx-auto d-block " alt= "...">
							</a>
						</div>
						
						<div class="form-row col-md-20">
						    <label for="exampleDropdownFormEmail1" class="form-label">Email</label>
                			<input type="email" class="form-control" id="exampleDropdownFormEmail1" name="email" placeholder="email@example.com" required>
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
	                <div class="container mb-1">
	                    <a class="dropdown-item d-inline text-body-secondary" href="sign-in.jsp">Non sei ancora registrato? Registrati!</a>
	                </div>
	                <!-- <div class="container mb-4">
	                    <a class="dropdown-item d-inline text-body-secondary" href="index.jsp">Torna alla Home</a>
	                </div> -->
						<button class="custom-register-btn mt-2" type="submit" >Login</button>
						<% if (request.getParameter("erroreCredenziali") != null) { %>
							<div class="alert alert-danger mt-3" role="alert">
								<p class="text-center my-0">Credenziali errate</p>
							</div>
						<% } %>
			
			</form>
					</div>
			</div>
			
		
		<%@ include file="footer.jsp" %>
		
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <!-- Swiper JS library -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- headroom JS library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/headroom/0.12.0/headroom.min.js" integrity="sha512-9UsrKTYzS9smDm2E58MLs0ACtOki+UC4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- AOS JS library-->
    <!-- <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/3.0.0-beta.6/aos.js" integrity="sha512-tnNM6PPNOVfZ5sGPw6hThCrcUBeqt2mVEk3EAj8tCtuMHqbuVm5/HsZagrr8W2aaFE+6rKIByGwQbEnmodrYVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Script locali -->
    <script src="bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>