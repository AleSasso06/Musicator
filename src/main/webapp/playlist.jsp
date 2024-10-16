<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="it.generationitaly.musicator.entity.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Playlists</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style.css">
	</head>
	
	<body>
	
		<% List<Playlist> playlists = (List<Playlist>) request.getAttribute("playlists"); %>
		
		<header>
		<%@ include file="nav.jsp" %>
		</header>
		
		<div class="container">
		    
		    <div class="container min-vh-10 d-flex  justify-content-center mt-5">
		
				<!-- Barra di Ricerca -->
				<div class="input-group mb-3">
					<form action="ricerche_specifiche" method="get" class="input-group mb-3">
						<input type="text" class="form-control" name="playlist" style="border-radius:30px" placeholder="Cerca le tue playlist preferite" aria-label="Recipient's username" aria-describedby="button-addon2">
						<!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
					</form>
				</div>
				<!-- Fine Barra di Ricerca -->	
				
			</div>
		    
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
		    	<span>Nessuna playlist trovata...</span>
		    <%} %>
		    
		</div>
		<div>
		<!-- Footer -->
		<footer class="footer bg-light text-center py-3">
		   <div class="container">
		       <p class="text-muted">© 2024 Musicator. Tutti i diritti riservati.</p>
		   </div>
		</footer>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</div>
</body>
</html>
