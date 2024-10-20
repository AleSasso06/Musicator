<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Musicator - Albums</title>
		<!-- Bootstrap css -->
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

		<header>
			<%@ include file="nav.jsp" %>
		</header>

		<!-- inizio pulsante torna indietro -->
		<a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>	
		<!-- fine pulsante torna indietro -->

		
		
		<div class="container-lg mt-5">
			<div class="container  min-vh-99 d-flex  justify-content-center  align-items-center">
				<form action="save-playlist" method="post">
					<h1 style= "text-align:center "class="mx-auto">CREA LA TUA PLAYLIST</h1>
					
					<div class="form-row col-md-20">
						<img width="150px"  src="giradischi.png" class="rounded mx-auto d-block " alt= "...">
					</div>
						
					<div class="form-row col-md-20">
						<label for="input-titolo" class="form-label">Titolo</label>
                		<input type="text" class="form-control" id="input-titolo" name="titolo"  required>
					</div>
					<div class="form-row col-md-20" style="margin-left:3px">
		                <label for="foto" class="form-label">URL Immagine</label>
		                <input type="text" class="form-control" id="foto" name="foto" value="" required>
		            </div>
		            <div class="form-check update-input" style="margin-top: 10px; margin-left: 3px">
					  <input class="form-check-input" type="checkbox" value="" id="privata">
					  <label class="form-check-label" for="flexCheckDefault" style="color:black">Privata</label>
					</div>
					<!-- inizio redirect id brano in caso presente -->
					<%if (request.getParameter("branoId") != null) { %>
						<div class="form-row col-md-20" style="margin-left:3px;">
						  <input class="form-control" type="hidden" value="<%=request.getParameter("branoId") %>" name="branoId">
						</div>
					<%} %>
					<!-- fine redirect id brano in caso presente -->
					<button class="custom-register-btn mt-2" type="submit" >Crea</button>
				</form>
			</div>
		</div>
		
		<footer>
			<%@ include file="footer.jsp" %>
		</footer>
		
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