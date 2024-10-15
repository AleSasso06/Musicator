<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.Album"%>
<%@ page import="it.generationitaly.musicator.entity.Brano"%>
<%@ page import="it.generationitaly.musicator.entity.Artista"%>
<%@ page import="it.generationitaly.musicator.entity.Playlist"%>
<%@ page import="it.generationitaly.musicator.entity.Genere"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Risultati ricerca</title>
<!-- Bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<!-- Bs Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<!-- css locali -->
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%
	List<Album> albums = (List<Album>) request.getAttribute("album");
	%>
	<%
	List<Brano> brani = (List<Brano>) request.getAttribute("brani");
	%>
	<%
	List<Artista> artisti = (List<Artista>) request.getAttribute("artisti");
	%>
	<%
	List<Playlist> playlists = (List<Playlist>) request.getAttribute("playlist");
	%>
	<%
	List<Genere> generi = (List<Genere>) request.getAttribute("generi");
	%>
	<%@ include file="nav.jsp"%>

	<!-- Sezione Classifica Globale -->

	<div class="container">

		<div class="col">
			<div class="p-8">
				<h1 class="fw-bold text-light h1center">
					Risultati ricerca '<%=request.getAttribute("inputUtente")%>'
				</h1>
			</div>
		</div>
		
		<!-- Griglia delle card -->
		<div class="row">
		<% if (!artisti.isEmpty()) { %>
		<h2 style="margin-bottom: 15px">Brani</h2>
			<% for (Brano brano : brani) { %>
			<% for (Artista artista : artisti) { %>
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://i.discogs.com/my-Hw-OAoNKQoTss4C8BhpJUPCPa4WXOJNcFY9myKls/rs:fit/g:sm/q:90/h:600/w:598/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMxNDky/NjM0LTE3MjQzMjYw/NzItOTIwNi5qcGVn.jpeg"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title"><%= brano.getTitolo() %></h5>
								<p class="text-dark card-text">Ci pensiamo domani</p>
							</div>
						</div>
						<div class="col-auto">
							<button class="btn btn-play">
								<i class="bi bi-play-circle-fill"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
			<% } %>
			<% } %>
			<% } else { %>
			<p></p>
		<% } %>
			<!-- Ripeti per altre card -->
		</div>
		<!-- <div class="row mb-4">
			<div class="col d-flex justify-content-center">
				<a class="carousel-control-prev" href=""
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only"></span>
				</a> <a class="carousel-control-next" href=""
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only"></span>
				</a>
			</div>
		</div> -->
	<% if (!artisti.isEmpty()) { %>
		<h2 style="margin-bottom: 15px">Artisti</h2>
		<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		<% for (Artista artista : artisti) { %>
		<a class="card-title h5" href="artista?id=<%= artista.getId() %>"><%= artista.getPseudonimo() %>
		<div class="col-p-3 mx-4 mb-4">
			<div class="card" style="width: 275px;">
				<img src="<%= artista.getFoto() %>" height="275" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title text-center"><%= artista.getPseudonimo() %></h5>
				</div>
			</div>
		</div>
		</a>
		<% } %>
		</div>
		<% } else { %>
			<p></p>
		<% } %>
		<!-- <div class="col-p-3 mx-4 mb-4">
			<div class="card" style="width: 275px;">
				<img src="https://i.scdn.co/image/ab6761610000517460f57316669a4ba12eb37b94" height="275" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title text-center">Lady Gaga</h5>
				</div>
			</div>
		</div>
		<div class="col-p-3 mx-4 mb-4">
			<div class="card" style="width: 275px;">
				<img src="https://i.scdn.co/image/ab6761610000e5eb2ab61d146599aeea3bdd771a" height="275" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title text-center">thasup</h5>
				</div>
			</div>
		</div>
		<div class="col-p-3 mx-4 mb-4">
			<div class="card" style="width: 275px;">
				<img src="https://i.scdn.co/image/ab6761610000e5eb4bfa622806527d4dd894185a" height="275" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title text-center">Marracash</h5>
				</div>
			</div>
		</div>
		 </div> -->
		 <% if (!albums.isEmpty()) { %>
			<h2 style="margin-bottom: 15px">Album</h2>
			<div class="container min-vh-10 d-flex  justify-content-center mt-5">
			<% for (Album album : albums) { %>
			<div class="col-p-3 mx-4 mb-4">
				<div class="card" style="width: 275px;">
					<img src="<%= album.getFoto() %>" height="275" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title text-center"><%= album.getTitolo() %></h5>
					</div>
				</div>
			</div>
			<% } %>
		<% } else { %>
			<p></p>
		<% } %>
			

	</div>
	<!-- Footer -->
	<footer class="footer bg-light text-center py-3">
		<div class="container">
			<p class="text-muted">© 2024 Musicator. Tutti i diritti
				riservati.</p>
		</div>
	</footer>
	<!-- Bootstrap Js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>