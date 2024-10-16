<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="it.generationitaly.musicator.entity.*" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Utente</title>
		 <!-- Bootstrap css -->
 		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
	</head>
	
	<body>
		
		<% Utente utente = (Utente) session.getAttribute("utente"); %>
		<% List<Playlist> playlists = utente.getPlaylist(); %>
	
		<header>
		<%@ include file="nav.jsp" %>
		</header>
		
		<main class="overflow-hidden">
		
			<!-- Inizio Logo -->
		    <div class="svg-container mt-3">
		        <img alt="" src="images/logo header.svg">
		    </div>
		    <!-- Fine Logo -->

			<div class="container mt-3">
		  		<div class="row d-flex align-items-center">
		  		
			  		<!-- inizio foto -->
				    <div class="col-md-4">
				      <picture>
				        <img src="<%=utente.getFoto() %>" class="img-fluid img-thumbnail rounded-circle" alt="..." 
					       style="width: 300px; height: 300px; position: relative; right: -50px; top: -100px; z-index: 10;">
				      </picture>
				    </div>
				    <!-- fine foto -->
				    
				    <!-- nome -->
				    <div class="col-md-8 text-center">
				       <h1 style="color: white"><%= utente.getUsername() %></h1>
				    </div>
				    <!-- fine nome -->
			    
			    </div>
			</div>
		
			<!-- data creazione account -->
			<h6 style="color: #BACBE2;">Creato il <%= utente.getDataCreazione() %></h6>
			<!-- fine data creazione account -->
			
			<!-- forse si potrebbe mettere una linea opp -->
			
			<%if (playlists != null && !playlists.isEmpty()){ %>
			    <%for (Playlist playlist : playlists) {%>
			    <div class="row">
			    	
			    	<a href="playlist?id=<%=playlist.getId()%>">
			    	<div class="col-2">
			    		<img src="<%=playlist.getFoto()%>">
			    	</div>
			    	<div class="col-10">
			    		<span><%=playlist.getTitolo()%></span>
			    	</div>
			    	</a>
			    	
			    </div>
			    <%} 
			} else { %>
		    	<span>Non ci sono ancora playlist</span>
		    <%} %>
			
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