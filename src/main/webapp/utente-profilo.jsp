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
						<picture> 
							<img src="<%=utente.getFoto()%>" class="img-fluid img-thumbnail rounded-circle" alt="..."
							style="width: 300px; height: 300px; object-fit: cover; position: relative; right: -500px; top: -280px; z-index: 10;">
						</picture>
					</div>
					<!-- fine foto -->
	
					<!-- dati -->
					<div class="col-md-4 text-md-start  text-center">
	
						<!-- nome -->
						<h1 class="display-3 text-light text-center" style="position: relative; top: -50px;">
							<b> <%=utente.getUsername()%></b>
						</h1>
						<!-- fine nome -->
	
						<!-- data creazione account -->
						<h6 class="text-center" style="position: relative; top: -50px; color: #BACBE2;">
							Creato il <%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(utente.getDataCreazione()) %>
						</h6>
						<!-- fine data creazione account -->
	
						<!-- inizio bottone impostazioni -->
						<a href="./user.jsp" type="button" class="btn btn-light" style="position: relative; top: -50px; left: 150px;">
							Impostazioni
						</a>
						<!-- fine bottone impostazioni -->
	
					</div>
					<!-- fine dati -->
				</div>
				<!-- fine intestazione -->
			</div>
	
			<h1 style="color: white; text-align: center; margin-top: 0px; margin-bottom: 80px">PLAYLIST</h1>
			<hr style="color: white; margin-top: -50px; margin-bottom: 70px">
	
			<!-- inizio playlist -->
				<div class="container">
					<!-- inizio card -->
					<div class="row row-cols-1 row-cols-md-3 g-4">
						<% if (playlists != null && !playlists.isEmpty()) { %>
						<!-- inizio caso: ci sono playlist -->
						<%for (Playlist playlist : playlists) {%>
						<!-- inizio card playlist trovate -->
						<div class="col-md-4 d-flex justify-content-center mb-2">
	
							<div class="card">
								<a href="playlist?id=<%=playlist.getId()%>">
									<img src="<%=playlist.getFoto()%>" class="card-img-top" alt="...">
								</a>
								<div class="card-body">
									<a class="card-title h5 text-right" href="playlist?id=<%=playlist.getId()%>">
										<%=playlist.getTitolo()%>
									</a>
									
									<!-- inizio bottone dropdown opzioni -->
									<div style="margin-top:-10px; margin-left: 230px" class="dropdown">
										<button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
									    	<i class="bi bi-three-dots-vertical"></i>
										</button>
										<ul class="dropdown-menu">
									    	<li><a class="dropdown-item" href="update-playlist?id=<%=playlist.getId()%>">Modifica</a></li>
									    	<li><hr class="dropdown-divider"></li>
									    	<!-- trigger modal -->
									    	<li><button class="dropdown-item"type="button" data-bs-toggle="modal" data-bs-target="#elimina_playlist_<%=playlist.getId()%>">
									    		Elimina
									    	</button></li>
									    	<!-- fine trigger modal -->
										</ul>
									</div>
									<!-- fine bottone dropdown opzioni -->
									<!-- inizio modal -->
									<div class="modal" tabindex="-1" id="elimina_playlist_<%=playlist.getId()%>">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
											        <h5 class="modal-title">Elimina Playlist</h5>
											        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											    </div>
												<div class="modal-body">
											    	<p style="color: black">Sei sicuro di voler eliminare questa playlist?</p>
											    </div>
											    <div class="modal-footer">
											    	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annulla</button>
											        <form action="delete-playlist" method="post">
										    			<input type="hidden" name="playlistId" value="<%=playlist.getId()%>">
										    			<button class="btn custom-register-btn" type="submit">Elimina</button>
													</form>
												</div>
											</div>
										</div>
									</div>
									<!-- fine modal -->
								</div>
							</div>
						</div>
						<!-- fine card playlist trovate -->
						<%}%>
						<!-- inizio card crea playlist  -->
						<div class="col d-flex justify-content-center ">
							<div class="card ml-2">
								<a href="creazioneplaylist.jsp"> 
									<img src="./+.png" class="card-img-top" alt="..."> 
								</a>
								<div class="card-body">
									<a class="card-title h5 text-right" href="creazioneplaylist.jsp" style="color: #686868"> 
										Crea la tua playlist 
									</a>	
								</div>
							</div>
						</div>
						<!-- fine card crea playlist -->
						<!-- fine caso: ci sono playlist -->
						<!-- inizio caso: non ci sono playlist -->
						<%} else {%>
						
				
							<p style="color:white; text-align:center;"><h4 style="color:white; text-align:center;"><i>Non ci sono ancora playlist</i></h4></p>
								</div>
								<div class="col d-flex justify-content-center mt-5 mb-3">
									<div class="card " >
										<a href="creazioneplaylist.jsp"> 
											<img src="./+.png" class="card-img-top" alt="..."> 
										</a>
										<div class="card-body">
											<a class="card-title h5 text-right" href="creazioneplaylist.jsp" style="color: #686868"> 
												Crea la tua playlist! 
											</a> 
										</div>
									</div>
								</div>
							</div>
						<%}%>
						<!-- fine caso : non ci sono playlist -->
					</div>
					<!-- fine card -->
			<!-- fine playlist -->
		</main>
		
		<!-- inizio footer -->
		<footer>
			<%@ include file="footer.jsp" %>
		</footer>
		<!--  fine footer -->
	
	
		<!-- Script locali -->
		<!-- Bootstrap JavaScript Libraries -->
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	    <!-- Script locali -->
	    <script src="bs5.js"></script>
	</body>
</html>