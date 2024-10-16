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
<link rel="stylesheet" href="style2.css">
<style>
   .button-spacing {
    padding: 10px 20px;
    background-color: #C2185B;
      }
        
        .btn-custom {
       .genre-list li {
    
    margin-bottom: 20px;
    font-size: 20px;
    background-color: #C2185B;
    border-radius: 5px;
    color: #FFFFFF;
}
     
       
        
    </style>
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
				<h1 style="padding: 50px 50px 40px 0px; text-align: left;" class="fw-bold text-light h1center">
					Risultati ricerca '<%=request.getAttribute("inputUtente")%>'
				</h1>
			</div>
		</div>
		
		<!-- Griglia delle card -->
		<div class="row">
		<% if (!brani.isEmpty() && !artisti.isEmpty()) { %>
		<h2 style="margin-bottom: 15px;">Brani</h2>
			<% for (Brano brano : brani) { %>
			<% for (Artista artista : artisti) { %>
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src=<%= brano.getFoto() %>
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<a class="card-title h5" href="brano?id=<%= brano.getId() %>">
									<h5 class="card-title"><%= brano.getTitolo() %></h5>
								</a>
								<a href="artista?id=<%= artista.getId() %>"><p class="text-dark card-text"><%= artista.getPseudonimo() %></p></a>
							</div>
						</div>
						<div class="col-auto">
							<a class="btn btn-play" href="brano?id=<%= brano.getId() %>">
								<i class="bi bi-play-circle-fill"></i>
							</a>
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
		<h2 style="margin-bottom: 15px; margin-top: 15px">Artisti</h2>
		<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		<% for (Artista artista : artisti) { %>
		<a class="card-title h5" href="artista?id=<%= artista.getId() %>">
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
			<h2 style="margin-bottom: 15px; margin-top: 15px">Album</h2>
			<div class="container min-vh-10 d-flex  justify-content-center mt-5">
			<% for (Album album : albums) { %>
				<a class="card-title h5" href="album?id=<%= album.getId() %>">
					<div class="col-p-3 mx-4 mb-4">
						<div class="card" style="width: 275px;">
							<img style="object-fit: cover;" src="<%= album.getFoto() %>" height="275" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title text-center"><%= album.getTitolo() %></h5>
							</div>
						</div>
					</div>
				</a>
			<% } %>
			</div>
		<% } else { %>
			<p></p>
		<% } %>
		<% if (!generi.isEmpty()) { %>
			<h2 style="margin-bottom: 15px; margin-top: 15px">Generi</h2>
			<div class="row row-cols-1 d-flex g-4 justify-content-center"><div class="row row-cols-1 row-cols-md-3 g-4"> </div>
			<% for (Genere genere : generi) { %>
					<div class="col-md-4">
    					<button type="button" class="btn btn-secondary btn-lg w-100 button-spacing" onclick="window.location.href='genere?id=<%= genere.getId() %>'">
       						<%= genere.getNome() %>
    					</button>
    				</div>
			<% } %>
			</div>
		<% } else { %>
			<p></p>
		<% } %>
		<% if (!playlists.isEmpty()) { %>
			<h2 style="margin-bottom: 15px; margin-top: 15px">Playlist</h2>
			<div class="container min-vh-10 d-flex  justify-content-center mt-5">
			<% for (Playlist playlist : playlists) { %>
				<a class="card-title h5" href="playlist?id=<%= playlist.getId() %>">
					<div class="col-p-3 mx-4 mb-4">
						<div class="card" style="width: 275px;">
							<img src="<%= playlist.getFoto() %>" height="275" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title text-center"><%= playlist.getTitolo() %></h5>
								<p class="card-text">creata da <%= playlist.getUtente() %></p>
							</div>
						</div>
					</div>
				</a>
			<% } %>
			</div>
		<% } else { %>
			<p></p>
		<% } %>
	</div>
	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	<!-- Bootstrap Js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>