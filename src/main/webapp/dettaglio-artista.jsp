<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Artista" %>
<%@page import= "it.generationitaly.musicator.entity.Album" %>
<%@page import= "it.generationitaly.musicator.entity.Genere" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Artista</title>
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
	</head>
	
	<body>
	<header>
	<%@ include file="nav.jsp" %>
	
	    <!-- ELEMENTI FIXED -->
    <%@ include file="goTop.jsp" %>
	
	</header>
	
	<%Artista artista = (Artista) request.getAttribute("artista"); %>
	<%List<Album> albums = artista.getAlbum(); %>
	
	 <button class="btn btn-primary" id="go-top" onclick="goTop();"><i class="bi bi-chevron-up"></i></button>
   	 <main class="overflow-hidden">

		<!-- Inizio Logo -->
        <div class="svg-container mt-3">
           <img alt="" src="images/header Brano.svg"  style="opacity: 0.7; transition: opacity 0.3s ease;">
        </div>
        <!-- Fine Logo -->
       
       <!-- pulsante per tornare indietro -->
    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
      
    	<div class="container mt-5">
  		<div class="row align-items-center">
    
	    <!-- inizio foto -->
	    <div class="col-md-4">
		  <picture>
	        <img src="<%=artista.getFoto() %>" class="img-fluid img-thumbnail rounded-circle" alt="..." 
		       style="width: 300px; height: 300px; object-fit: cover; position: relative; right: -510px; top: -350px; z-index: 10;">
		  </picture>
	    </div>
	    <!-- fine foto -->
    
	    <!-- nome -->
	    <div class="col-md-4 text-md-start  text-center">
	         <h1 class="display-3 text-light text-center" style="position: relative; top: -120px;"><b> <%= artista.getPseudonimo() %></b></h1>
	    </div>
	    <!-- fine nome -->
    	</div>
		</div>
	
    	<div style="position: relative; top: -150px;">
    	<!-- inizio dati -->
    	<div class="container mt">
   		 <div class="col-md-8 mx-auto text-light text-align: justify">
   		 <% if(artista.isBand() == false) { %>
       	 <p><strong>Nome Artista:</strong> <%= artista.getNome() %></p>
       	 <p><strong>Data di nascita:</strong> <%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(artista.getDataNascita()) %></p>
       	 <%} else { %>
       	 <p><strong>Nomi Artisti:</strong> <%= artista.getNome() %></p>
       	 <p><strong>Data creazione:</strong> <%= new java.text.SimpleDateFormat("yyyy").format(artista.getDataNascita()) %></p>
       	 <%} %>
       	 <p><strong>Nazionalità:</strong> <%= artista.getNazionalita() %></p>
       	 <p><strong>Biografia:</strong> <%= artista.getBiografia() %></p>
      </div>
   </div>
    	<!-- fine dati -->
      
      </main>
      
		<!-- inizio album -->
<h3 class="text-light text-center" style="position: relative; top: -50px;">Album</h3>
<div class="container mt-4">
    <div class="row justify-content-center">
        <% for (Album album : albums) { %>
            <div class="col-md-4 mb-4 d-flex justify-content-center">
                <a class="card-title h5" href="album?id=<%= album.getId() %>">
                    <div class="card" style="width: 250px;">
                        <img style="object-fit: cover;" src="<%= album.getFoto() %>" height="250" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title text-center"><%= album.getTitolo() %></h5>
                        </div>
                    </div>
                </a>
            </div>
        <% } %>
    </div>
</div>
<!-- fine album -->

		
		
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
    <script src="bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>