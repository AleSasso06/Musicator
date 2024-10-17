<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="it.generationitaly.musicator.entity.*" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mussicator - Utente</title>
		 <!-- Bootstrap css -->
 		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
	</head>
	
	<body>
	
		<header>
		<%@ include file="nav.jsp" %>
		</header>
		
		<% utente = (Utente) session.getAttribute("utente"); %>
		<% List<Playlist> playlists = utente.getPlaylist(); %>
		
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
				        <img src="<%=utente.getFoto() %>" class="img-fluid img-thumbnail rounded-circle" alt="..." 
					       style="width: 300px; height: 300px; object-fit: cover; position: relative; right: -510px; top: -350px; z-index: 10;">
				      </picture>
				    </div>
				    <!-- fine foto -->
				    
				    <!-- dati -->
				    <div class="col-md-4 text-md-start  text-center">
					    
					    <!-- nome -->
					    <h1 class="display-3 text-light text-center" style="position: relative; top: -120px;">
					    <b> <%= utente.getUsername() %></b></h1>
					    <!-- fine nome -->
					    
					    <!-- data creazione account -->
						<h6 class="text-center" style="position: relative; top: -120px; color: #BACBE2;">Creato il <%= utente.getDataCreazione() %></h6>
						<!-- fine data creazione account -->
						
						<!-- inizio bottone impostazioni -->
						<button type="button" class="btn btn-light" style="position: relative; top: -120px; left: 150px;">Impostazioni</button>
				    	<!-- fine bottone impostazioni -->
				    
				    </div>
				    <!-- fine dati -->
			    </div>
			    <!-- fine intestazione -->
			    </div>
			    
				<h1 style="color:white; text-align: center; margin-top: 0px; margin-bottom: 80px">PLAYLIST</h1>
				
				<!-- inizio playlist -->
				<div class="container">
					<!-- forse si potrebbe mettere una linea opp -->		    
				    <div class="container">
						<!-- inizio card -->
						<div class="row row-cols-1 row-cols-md-3 g-4">
							<%if (playlists != null && !playlists.isEmpty()){ %>
							    <%for (Playlist playlist : playlists) {%>
							  <div class="col-md-4 d-flex justify-content-center mb-3">
							  
							    <div class="card">
							      <img src="<%= playlist.getFoto() %>" class="card-img-top" alt="..." >
							      <div class="card-body text-center">
							        <a class="card-title h5" href="album?id=<%= playlist.getId() %>"><%= playlist.getTitolo() %></a>
							      </div>
							    </div>
							  </div>
							   <%} %>
							<% } else { %>
						    	<span>Non ci sono ancora playlist</span>
						    <%} %>
						</div>
						<!-- fine card -->
					</div>
				</div>
				<!-- fine playlist -->
			
			
		</main>
		<!-- inizio footer -->
        <footer class="footer bg-light text-center py-3">
		        <div class="container">
		            <p class="text-muted">© 2024 Musicator. Tutti i diritti riservati.</p>
		        </div>
		 </footer>
		<!--  fine footer -->
		
		
	    <!-- Script locali -->
	    <script src="assets/javascript/bs5.js"></script>
		<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
	</body>
</html>