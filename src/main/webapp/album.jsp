<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Album" %>
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
			.card {
				width: 18rem; 
				height: 20rem; 
				
			.card-img-top {
				height: 15rem; 
				object-fit: cover; 
			}
			.card-body {
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
			}
		</style>
		
	</head>
	
	<body>
		<%List<Album> albums = (List<Album>) request.getAttribute("albums"); %>
		<%@ include file="nav.jsp" %>
		<div>
		<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		
			 <!-- Barra di Ricerca -->
			<div class="input-group mb-3">
			<form action="ricerche_specifiche" method="get" class="input-group mb-3">
			  <input type="text" class="form-control" name="album" style="border-radius:30px" placeholder="Cerca il tuo album preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
			 <!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
			 </form>
			</div>
			<!-- Fine Barra di Ricerca -->	
		</div>
		
		<!-- pulsante per tornare indietro -->
    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>	
			
			<div class="container">
			<!-- inizio card -->
			<div class="row row-cols-1 row-cols-md-3 g-4">
			<%for(Album album : albums) {%>
			  <div class="col-md-4 d-flex justify-content-center mb-3">
			  
			    <div class="card">
			      <img src="<%= album.getFoto() %>" class="card-img-top" alt="..." >
			      <div class="card-body text-center">
			        <a class="card-title h5" href="album?id=<%= album.getId() %>"><%= album.getTitolo() %></a>
			      </div>
			    </div>
			  </div>
			  <%} %>
		</div>
		<!-- fine card -->
		</div>
		
		<!-- inizio footer -->
       <%@ include file="footer.jsp" %>
		<!--  fine footer -->
		
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