<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="it.generationitaly.musicator.entity.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style.css">
	</head>
	<body>
		<%
		List<Playlist> playlists = (List<Playlist>) request.getAttribute("playlists");
		%>
		<%@ include file="nav.jsp" %>
		<div class="container">
			<div class="row">
				<div class="col">
				<form class="d-flex" role="search" action="ricerche-specifiche" method="get">
			   		<input class="form-control me-2" type="search" placeholder="Cerca le tue playlist preferite..." aria-label="Search" name="playlist">
			   		<button class="btn btn-outline-danger" type="submit">Cerca</button>
			    </form>
			    </div>
		    </div>
		    <%if (playlists != null && !playlists.isEmpty()){ %>
		    <%for (Playlist playlist : playlists) {
		    	%>
		    <div class="row">
		    	<a href="playlist?id=<%=playlist.getId()%>">
		    	<div class="col">
		    		<img src="<%=playlist.getFoto()%>">
		    	</div>
		    	<div class="col">
		    		<span><%=playlist.getTitolo()%></span>
		    	</div>
		    	</a>
		    </div>
		    <%} %>
		    <%} else { %>
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
