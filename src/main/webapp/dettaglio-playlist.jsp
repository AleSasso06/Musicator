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
				
		<!-- Font -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

		
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
	            white-space: nowrap; /* Impedisce la rottura della riga */
	            text-align: center; /* Allinea il testo al centro */
	            width: 200px;
	        }
	        
	        .card-title {
				white-space: nowrap;					overflow: hidden						text-overflow: ellipsi		
				max-width: 175		;
			}
	
	        .btn-play {
	            font-size: 1.5rem;
	            color: #C2185B;
	        }
	        
			.album-description {
			    margin-top: -240px; 
			    position: relative; 
			    z-index: 10; 
			}
	    </style>
	</head>

	<body>
	
			<%@ include file="nav.jsp" %>
	    <!-- ELEMENTI FIXED -->
    <%@ include file="goTop.jsp" %>
	
	
	
		<% Playlist playlist = (Playlist)request.getAttribute("playlist"); %>
		<% List <Brano> brani = playlist.getBrani(); %>

		<div class="pt-3"></div>
		
		<!-- Inizio Logo -->
	        <div class="svg-container mt-3">
	           <img alt="" src="images/header Brano.svg"  style="opacity: 0.7; transition: opacity 0.3s ease;">
	        </div>
        <!-- Fine Logo -->
        
	 	<!-- pulsante per tornare indietro -->
	    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
		
		<!-- nome playlist -->
		<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 d-flex justify-content-center align-items-center" style="height: 275px; width: 275px">
            <picture>
                <img src="<%=playlist.getFoto() %>" class="img-thumbnail" alt="..." style="margin-top: -650px; height: 275px; width: 275px; object-fit: cover;">
            </picture>
        </div>
    </div>
    <div class="col text-center">
        <h1 class="display-3 text-light" style="margin-top: -280px; z-index:10;"><b><%= playlist.getTitolo() %></b></h1>
    </div>
    <div class="col text-center">
        <h6 style="color: #BACBE2;">Creata il <span style="color:white;"><%= new java.text.SimpleDateFormat("dd/MM/yyyy").format(playlist.getDataCreazione()) %></span> da <b style="color: white"><%= playlist.getUtente().getUsername()%></b></h6>
    </div>
</div>

		<!-- <div class="container min-vh-10 d-flex justify-content-center mt-5 pt-2 py-3">
		    <h1 style="color:white"> Elenco brani</h1>
		</div> -->
		
		<!-- Griglia delle card -->
		<div class="row justify-content-center" style="margin-top: 50px; margin-bottom: 100px">
		    <% if (!brani.isEmpty()) { %>
		        <% for (Brano brano : brani) { %>
		            <div class="col-12 mb-3 d-flex justify-content-center">
		                <div class="card song-card">
		                    <div class="row no-gutters align-items-center">
		                        <div class="col-auto" style="height: 110px; weight: 110px; object-fit: cover">
		                        
		                            <img src="<%= brano.getAlbum().get(0).getFoto() %>" style="height: 110px; weight: 110px; object-fit: cover" class="rounded song-img" alt="...">
		                       </a>
		                        </div>
		                        <div class="col">
		                            <div class="card-body p-2">
		                                <a class="card-title" href="brano?id=<%= brano.getId() %>">
		                                    <p class="card-title text-start">
													<b><%=brano.getTitolo()%></b>
											</p>
		                                </a>
		                                <a href="album?id=<%=brano.getAlbum().get(0).getId()%>"
												style="color: black">
												<p class="card-title text-start"><%=brano.getAlbum().get(0).getTitolo()%></p>
											</a> <p class="card-title text-start"><% if (brano.getDurata()%60 < 10) { %>
																	                        <%=((brano.getDurata()/60)%60) %>:0<%=(brano.getDurata()%60)%><br>
																	                    <% } else { %>
																	                        <%=((brano.getDurata()/60)%60) %>:<%=(brano.getDurata()%60)%><br>
																	                    <% } %></p>
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
		    <div class="row justify-content-center text-center">
		        <p>Nessun brano trovato.</p>
		        </div>
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
    	<script src="bs5.js"></script>

		<!-- Bootstrap Js -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
		
		</div>
	</body>
</html>