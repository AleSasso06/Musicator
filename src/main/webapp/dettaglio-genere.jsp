<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.util.List" %>
    <%@page import= "it.generationitaly.musicator.entity.Brano" %>
     <%@page import= "it.generationitaly.musicator.entity.Album" %>
      <%@page import= "it.generationitaly.musicator.entity.Genere" %>
       <%@page import= "it.generationitaly.musicator.entity.Artista" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Genere</title>
		<link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="style2.css">
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
<body>

			
<%@ include file="nav.jsp" %>


<div class="container mt-5">
   
 	
	<%List<Brano> brani = (List<Brano>) request.getAttribute("brani"); %>

  <%List<Artista> artisti = (List<Artista>) request.getAttribute("artisti"); %> 

    <h3>Artisti</h3>
    <div class="row row-cols-1 row-cols-md-3 g-4">
         <%Genere genere = (Genere) request.getAttribute("genere"); %>
        <% for(Artista artista : artisti) { %>
            <div class="col mb-3">
                <div class="card">
                    <img src="<%= artista.getFoto() %>" class="card-img-top" alt="<%= artista.getPseudonimo() %>">
                    <div class="card-body text-center">
                        <a class="card-title h5" href="artista?id=<%= artista.getId() %>"><%= artista.getPseudonimo() %></a>
                    </div>
                </div>
            </div>
        <% } %>
    </div>

    <h3>Album</h3>
    <div class="row row-cols-1 row-cols-md-3 g-4">
     <%List<Album> albums = (List<Album>) request.getAttribute("album"); %>
        <% for(Album album : albums) { %>
            <div class="col mb-3">
                <div class="card">
                   
                    <div class="card-body text-center">
                        <a class="card-title h5" href="album?id=<%= album.getId() %>"><%= album.getTitolo() %></a>
                    </div>
                </div>
            </div>
        <% } %>
    </div>

    <footer class="footer bg-light text-center py-3 mt-4">
        <div class="container">
            <p class="text-muted">© 2024 Musicator. Tutti i diritti riservati.</p>
        </div>
    </footer>

</div>

<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>