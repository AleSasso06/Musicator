<%@page import="java.util.List"%>
<%@page import="it.generationitaly.musicator.entity.Brano"%>
<%@page import="it.generationitaly.musicator.entity.Album"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<body>

<%List<Brano> brani = (List<Brano>) request.getAttribute("brani");%>

	<%@ include file="nav.jsp"%>
	
	<div class="container justify-content-center mt-5">
 		<!-- Barra di Ricerca -->
			<div class="input-group mb-3">
			<form action="ricerche_specifiche" method="get" class="input-group mb-3">
			  <input type="text" class="form-control" name="brani" style="border-radius:30px" placeholder="Cerca il tuo brano preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
			 <!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
			 </form>
			</div>
		<!-- Fine Barra di Ricerca -->
		
		


<div class="row justify-content-center">

<!-- prova card -->
<!-- Griglia delle card -->
		<div class="container justify-content-center">
		<% if (!brani.isEmpty()) { %>
			<% for (Brano brano : brani) { %>
		<div class="container mt-3">
				<div class="card song-card" style="max-width: 800px; opacity: 0.7; transition: opacity 0.5s ease;">
					<div class="row no-gutters align-items-center">
						<div class="col-3">
							<img
								src=<%= brano.getFoto() %>
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<a class="card-title h5" href="brano?id=<%= brano.getId() %>"><%= brano.getTitolo() %>
									<h5 class="card-title"></h5>
									<p class="card-text"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></p>
									
								</a>
								
							</div>
						</div>
						<div class="col-auto">
							<a class="btn btn-play" href="<%= brano.getYtLink()%>">
								<i class="bi bi-play-circle-fill"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<% } %>
			<% } else { %>
			<p></p>
		<% } %>
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