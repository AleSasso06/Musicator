<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Impostazioni</title>
<!-- Bootstrap css -->
 		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
				
		<!-- Font -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

		
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
	    <style>
		.container-modifica {
	            
	           
	            margin-top:50px;
	            margin-bottom: 50px;
	            max-width: 500px;           
	            padding: 20px;             
	             background-color:white;
	            border-radius: 10px;    
	            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	    } 
		</style> 
</head>
<body>
		<header>
		<%@ include file="nav.jsp" %>
		</header>
		
		<% utente = (Utente) session.getAttribute("utente"); %>
		
		 <div class="svg-container mt-3">
		        <img alt="" src="images/logo header.svg">
		    </div>
		
	  
	  		 <!-- pulsante per tornare indietro -->
    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
   

 <div class="container">
	 
	 <div style="text-align:center"class="container mr-5 mt-5 mb-1">
	  <h2>MODIFICA PROFILO </h2>
	  </div>
		
	<div class="container   ">	 
  <div class="container-modifica mx-auto ">
		<form action="ModificaUtenteServlet" method="post">
		
					<input type="hidden" name="id" value="<%=utente.getId()%>">
					
					<div class="form-row col-md-20 ">
					<label for="inputFoto">URL foto</label>
						<input class="form-control" id="inputFoto" type="text"  name="foto"  value="<%=utente.getFoto()%>">
						
						
					</div>
					<div class="form-row col-md-20 ">
					<label for="inputEmail4">Email</label>
						<input class="form-control" id="inputEmail4" type="email"  name="email"  readonly value="<%=utente.getEmail()%>">
						
						
					</div>
					<div class="form-group col-md-20">
					<label for="input-username">Username</label>
						<input class="form-control" id="input-username" type="text"  name="username"  value="<%=utente.getUsername()%>">
						
						
					</div>
					<div class="form-group col-md-20">
					<label for="inputPassword4">Password</label>
						<input class="form-control" id="inputPassword4" type="password" name="password"  value="<%=utente.getPassword()%>">
						
						
					</div>
					<button class="btn-custom mt-3 " type="submit">SALVA</button>
				</form>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>

    <!-- Bootstrap JavaScript Libraries -->
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