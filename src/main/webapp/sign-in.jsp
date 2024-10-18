<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="UTF-8">
		<title>Musicator - Registrazione</title>
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
		.container-sign-in {
	            
	            margin-top:-80px;
	            margin-bottom: 50px;
	            max-width: 500px;           
	            padding: 70px;              
	            background-color: white;   
	            border-radius: 10px;    
	            
	    }
		</style>
		
	</head>

	<body >
	
	
	<div class="container">
	   <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
	   </div>
		
		
		<div class="container-sign-in mx-auto ">
			<form action="registrati" method="post">
			<h1 style= "text-align:center "class="mb-3">Registrazione</h1>
					
						
						<div class="form-row col-md-20 mb-1">
							<!-- <form id="uploadForm">
								<img width="150px"  src="giradischi.png" class="rounded mx-auto d-block " alt= "...">
								<br><br>
								<!-- commento l'inserimento foto perchè non ho idea di come farlo dal lato servlet -->
								<!-- <label for="profileImage">Scegli un'immagine:</label>
								<input type="file" id="profileImage" accept="image/*">  
							</form> -->
						</div>
						
						<div style="margin-top: -50px"class="form-row col-md-20 ">
						    <label class="mt-3" for="input-nome">Nome</label>
						    <input type="text" class="form-control" id="input-nome" name="nome" required>
						</div>
						
						<div class="form-group col-md-20">
							<label class="mt-3" for="input-cognome">Cognome</label>
							<input type="text" class="form-control" id="input-cognome" name="cognome" required>
						</div>
						
						<div class="form-group col-md-20">
							<label class="mt-3" for="inputEmail4">Email</label>
							<input type="email" class="form-control" id="inputEmail4" name="email" required>
						</div>
						
						<div class="form-group col-md-20">
							<label class="mt-3" for="input-username">Username</label>
							<input type="text" class="form-control" id="input-username" name="username" required>
						</div>
						
						<div class="form-group col-md-20 ">
							<label class="mt-3" for="inputPassword4">Password</label>
							<input type="password" class="form-control" id="inputPassword4" name="password" required>
						</div>
						<br>
						<button class="custom-register-btn" type="submit" >Registrati</button>
					
				
			</form>
			</div>
			<!-- <div class="form-group">
			    <label for="inputAddress">Address</label>
			    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
			  </div>
			  <div class="form-group">
			    <label for="inputAddress2">Address 2</label>
			    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
			  </div>
			   <div class="form-row">
			    <div class="form-group col-md-6">
			      <label for="inputCity">City</label>
			      <input type="text" class="form-control" id="inputCity">
			    </div>
			    <div class="form-group col-md-4">
			      <label for="inputState">State</label>
			      <select id="inputState" class="form-control">
			        <option selected>Choose...</option>
			        <option>...</option>
			      </select>
			    </div>
			    <div class="form-group col-md-2">
			      <label for="inputZip">Zip</label>
			      <input type="text" class="form-control" id="inputZip">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="form-check">
			      <input class="form-check-input" type="checkbox" id="gridCheck">
			      <label class="form-check-label" for="gridCheck">
			        Check me out
			      </label>
			    </div>
			  </div>-->
		   
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
    <script src="assets/javascript/bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>