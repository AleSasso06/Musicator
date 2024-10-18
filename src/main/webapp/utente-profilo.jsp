<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musicator - Utente</title>
<!-- Bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<!-- Bs Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- css locali -->
<link rel="stylesheet" href="style2.css">
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
					<div class="col-md-4 d-flex justify-content-center mb-3">

						<div class="card">
							<a href="playlist?id=<%=playlist.getId()%>">
								<img src="<%=playlist.getFoto()%>" class="card-img-top" alt="...">
							</a>
							<div class="card-body">
								<a class="card-title h5 text-right"
									href="playlist?id=<%=playlist.getId()%>"><%=playlist.getTitolo()%>
								</a>
								
								<!-- inizio bottone dropdown opzioni -->
								<div class="dropdown">
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

					<%
					}
					%>
					<%
					} else {
					%>
					<span>Non ci sono ancora playlist</span>
					<%
					}
					%>
				</div>
				<!-- fine card -->
			</div>
		</div>
		<!-- fine playlist -->
		
		
	<!-- inizio crea nuova playlist -->
	<!-- <div class="container" style="margin-bottom: 70px">
			forse si potrebbe mettere una linea opp
			<div class="container">
				inizio card
				<div class="row row-cols-1 row-cols-md-3 g-4">
				
					<div class="col-md-4 d-flex justify-content-center mb-3">

						<div class="card">
							<a href="#"> qui ci andrebbe il link alla pagina dove si crea la playlist
								<img src="#" class="card-img-top" alt="..."> qui ci andrebbe un'img grigia con un +
							</a>
							<div class="card-body">
								<a class="card-title h5 text-right" href="#"> </a> qui ci andrebbe il link alla pagina dove si crea la playlist
								<i class="bi bi-plus-lg"></i>
							</div>
						</div>
					</div>
				</div>
				fine card
			</div>
		</div> -->
		<!-- fine crea nuova playlist -->


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
	<script src="assets/javascript/bs5.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>