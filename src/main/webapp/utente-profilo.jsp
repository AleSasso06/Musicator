<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musicator - Utente</title>
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

	<header>
		<%@ include file="nav.jsp"%>
	</header>

	<%
	utente = (Utente) session.getAttribute("utente");
	%>
	<%
	List<Playlist> playlists = utente.getPlaylist();
	%>

	<main class="overflow-hidden">

		<!-- Inizio Logo -->
		<div class="svg-container mt-3">
			<img alt="" src="images/header Brano.svg">
		</div>
		<!-- Fine Logo -->

		<div class="container mt-3">
			<!-- intestazione -->
			<div class="row d-flex align-items-center">

				<!-- inizio foto -->
				<div class="col-md-4">
					<picture> <img src="<%=utente.getFoto()%>"
						class="img-fluid img-thumbnail rounded-circle" alt="..."
						style="width: 300px; height: 300px; object-fit: cover; position: relative; right: -500px; top: -280px; z-index: 10;">
					</picture>
				</div>
				<!-- fine foto -->

				<!-- dati -->
				<div class="col-md-4 text-md-start  text-center">

					<!-- nome -->
					<h1 class="display-3 text-light text-center"
						style="position: relative; top: -50px;">
						<b> <%=utente.getUsername()%></b>
					</h1>
					<!-- fine nome -->

					<!-- data creazione account -->
					<h6 class="text-center"
						style="position: relative; top: -50px; color: #BACBE2;">
						Creato il
						<%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(utente.getDataCreazione()) %></h6>
					<!-- fine data creazione account -->

					<!-- inizio bottone impostazioni -->
					<a href="./user.jsp" type="button" class="btn btn-light"
						style="position: relative; top: -50px; left: 150px;">Impostazioni</a>
					<!-- fine bottone impostazioni -->


				</div>
				<!-- fine dati -->
			</div>
			<!-- fine intestazione -->
		</div>

		<h1 style="color: white; text-align: center; margin-top: 0px; margin-bottom: 80px">PLAYLIST</h1>
		<hr style="color: white; margin-top: -50px; margin-bottom: 70px">

		<!-- inizio playlist -->
	<div class="container" style="margin-bottom: 70px">
			<!-- forse si potrebbe mettere una linea opp -->
			<div class="container">
				<!-- inizio card -->
				<div class="row row-cols-1 row-cols-md-3 g-4">
					<%
					if (playlists != null && !playlists.isEmpty()) {
					%>
					<%for (Playlist playlist : playlists) {%>
					<div class="col-md-4 d-flex justify-content-center mb-2">

						<div class="card">
							<a href="playlist?id=<%=playlist.getId()%>">
								<img src="<%=playlist.getFoto()%>" class="card-img-top" alt="...">
							</a>
							<div class="card-body">
								<a class="card-title h5 text-right"
									href="playlist?id=<%=playlist.getId()%>"><%=playlist.getTitolo()%>
								</a>
								
								<!-- inizio bottone dropdown opzioni -->
								<div style="margin-top:-10px"class="dropdown ">
								  <button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
								    <i class="bi bi-three-dots-vertical"></i>
								  </button>
								  <ul class="dropdown-menu">
								    <li><a class="dropdown-item" href="update-playlist?id=<%=playlist.getId()%>">Modifica</a></li>
								    <li><hr class="dropdown-divider"></li>
								    <li><a class="dropdown-item" href="delete-playlist?playlistId=<%=playlist.getId()%>">Elimina</a></li>
								  </ul>
								</div>
								<!-- fine bottone dropdown opzioni -->
							</div>
						</div>
					</div>
</div>
                      
                       <!--  <div class="container mt-4" style="margin-bottom: 70px">-->
			
			<!--  <div class="container">-->
				
				<!--  <div class="row row-cols-1 row-cols-md-3 g-4">-->
				
					<div style="margin-top:-325px"class="col d-flex justify-content-center ">

						<div class="card ml-2">
							<a href="creazioneplaylist.jsp"> 
								<img src="./+.png" class="card-img-top" alt="..."> 
							</a>
							<div class="card-body">
								<a class="card-title h5 text-right" href="creazioneplaylist.jsp"> Crea la tua playlist </a> 
								
							</div>
						</div>
					</div>
					 </div> 
				<!--  </div>  -->
			
		 
					<%
					}
					%>
					<%
					} else {
					%>
								 <div class="container "  style="margin-bottom: 70px">
			
			<div class="container">
			<div style="color:white;text-align:center">Non ci sono ancora playlist</div>
				<br>	
					
		
				
				<!--  <div class="row row-cols-1 row-cols-md-3 g-4">-->
				
					<div class="col d-flex justify-content-center mt-5 mb-3">

						<div class="card " >
							<a href="creazioneplaylist.jsp"> 
								<img src="./+.png" class="card-img-top" alt="..."> 
							</a>
							<div class="card-body">
								<a class="card-title h5 text-right" href="creazioneplaylist.jsp"> Crea la tua playlist! </a> 
								
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
			
		
					<%
					}
					%>
				
				<!-- fine card -->
			</div>
		</div>
		<!-- fine playlist -->
		
		
	
	 <!--  <div class="container" style="margin-bottom: 70px">
			
			<div class="container">
				
				<div class="row row-cols-1 row-cols-md-3 g-4">
				
					<div class="col-md-4 d-flex justify-content-center mb-3">

						<div class="card w-75 " >
							<a href="creazioneplaylist.jsp"> 
								<img src="./+.png" class="card-img-top" alt="..."> 
							</a>
							<div class="card-body">
								<a class="card-title h5 text-right" href="creazioneplaylist.jsp"> Crea la tua playlist! </a> 
								<i class="bi bi-plus-lg"></i>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div> -->
		


	</main>
	<!-- inizio footer -->
	<footer class="footer bg-light text-center py-3">
		<div class="container">
			<p class="text-muted">© 2024 Musicator. Tutti i diritti
				riservati.</p>
		</div>
		 
	</footer>
	<!--  fine footer -->


	<!-- Script locali -->
	<!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw==" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- Script locali -->
    <script src="bs5.js"></script>

</html>