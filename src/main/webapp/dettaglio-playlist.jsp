<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="it.generationitaly.musicator.entity.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Musicator - Playlist</title>
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
	        /* Imposta una larghezza fissa per tutte le card */
	        .song-card {
	            width: 550px; /* Definisci una larghezza fissa per garantire uniformità */
	            opacity: 0.7;
	            transition: opacity 0.5s ease;
	        }
	
	        .card-body {
	            text-align: center; /* Allinea il testo al centro */
	        }
	
	        .btn-play {
	            font-size: 1.5rem;
	            color: #C2185B;
	        }
	        
			.album-description {
			    margin-top: -150px; 
			    position: relative; 
			    z-index: 10; 
			}
	    </style>
	</head>

	<body>
		<% Playlist playlist = (Playlist)request.getAttribute("playlist"); %>
		<% List <Brano> brani = playlist.getBrani(); %>
		<%@ include file="nav.jsp" %>
		<div class="pt-3"></div>
		
		<!-- Inizio Logo -->
	        <div class="svg-container mt-3">
	           <img alt="" src="images/header Brano.svg"  style="opacity: 0.7; transition: opacity 0.3s ease;">
	        </div>
        <!-- Fine Logo -->
        
	 	<!-- pulsante per tornare indietro -->
	    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
		
		<!-- nome playlist -->
		<div class="col-md-4 text-md-start  text-center">
			<picture>
		    	<img src="<%=playlist.getFoto() %>" class="img-thumbnail" alt="..."  style="widht:300px; height:300px; object-fit: cover; position:relative; right: -580px; top: -265px; z-index:10px">
		   	</picture>
		</div>
      
		<div class="container">
			<div class="col">
				<h1 class="display-3 text-light text-center" style="position:relative; right: 0px; top:-225px; z-index:10px"> <b><%= playlist.getTitolo() %></b></h1>
	       	</div>
	       	
	       	<div class="col">
				<h6 class="text-center" style="position:relative; right: 0px; top:-225px; z-index:10px; color: #BACBE2;">Creata il <span style="color:white;"><%= new java.text.SimpleDateFormat("dd/MM/yyyy").format(playlist.getDataCreazione()) %></span> da <b style="color: white"><%= playlist.getUtente().getUsername()%></b></h6>
	       	</div>
	    
		</div>

		<!-- <div class="container min-vh-10 d-flex justify-content-center mt-5 pt-2 py-3">
		    <h1 style="color:white"> Elenco brani</h1>
		</div> -->
		
		<!-- Griglia delle card -->
		<div class="row justify-content-center" style="margin-top: -150px; margin-bottom: 100px">
		    <% if (!brani.isEmpty()) { %>
		        <% for (Brano brano : brani) { %>
		            <div class="col-12 mb-3 d-flex justify-content-center">
		                <div class="card song-card">
		                    <div class="row no-gutters align-items-center">
		                        <div class="col-auto">
		                            <img src="<%= brano.getAlbum().get(0).getFoto() %>" height="110" class="rounded song-img" alt="...">
		                        </div>
		                        <div class="col">
		                            <div class="card-body p-2">
		                                <a class="card-title h5" href="brano?id=<%= brano.getId() %>">
		                                    <h5 class="card-title text-start"><%= brano.getTitolo() %></h5>
		                                </a>
		                                <h6 class="card-title text-start"><%= new java.text.SimpleDateFormat("mm:ss").format(brano.getDurata()/60) %></h6>
		                            </div>
		                        </div>
		                        <div class="col-auto">
		                            <a class="btn btn-play" href="<%= brano.getYtLink() %>" target="blank">
		                                <i class="bi bi-play-circle-fill"></i>
		                            </a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        <% } %>
		    <% } else { %>
		        <p>Nessun brano trovato.</p>
		    <% } %>
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
		
		</div>
	</body>
</html>