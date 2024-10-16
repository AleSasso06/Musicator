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
	<footer class="bg-dark text-light py-5">
        <div class="container text-center text-lg-start">
            <div class="row">
                <!-- footer logo e selettore lingua-->
                <div class="col-12 col-lg-6">
                    <p class="mb-4 pb-2"><img src="assets/immagini/shazam-logo-footer.svg" alt="logo"
                            id="footer-logo"></p>
                    <p class="mb-2">Select language</p>
                    <div class="dropdown mb-5">
                        <a class="btn btn-outline-light dropdown-toggle fs-6 rounded-0" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown link
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Italian</a></li>
                            <li><a class="dropdown-item" href="#">French</a></li>
                            <li><a class="dropdown-item" href="#">Netherlands</a></li>
                        </ul>
                    </div>
                </div>
                <!-- footer menu links sx -->
                <div class="col-6 col-md-4 offset-md-2 col-lg-3 offset-lg-0 text-start fs-5">
                    <p class="text-secondary mb-2">Company</p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">About
                            us</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Apps</a>
                    </p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Careers</a>
                    </p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Help
                            for Apple Devices</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Help
                            for Android Devices</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">ShazamKit
                            for Developers</a></p>
                </div>
                <!-- footer menu links dx -->
                <div class="col-6  col-md-4 offset-md-1 col-lg-3 offset-lg-0 text-start fs-5">
                    <p class="text-secondary mb-2">Legal</p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Terms</a>
                    </p>
                    <p class="mb-2"><a href="#" class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Privacy
                            policy</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Manage
                            your data</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">My
                            library</a></p>
                </div>
                <!-- footer social + copyright -->
                <div class="col-12 mb-5 pb-5 mt-5 text-center">
                    <p class="text-secondary mb-2">Follow Us</p>
                    <div class="mb-3">
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-facebook fs-2"></i></a>
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-twitter-x fs-2"></i></a>
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-instagram fs-2"></i></a>
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-snapchat fs-2"></i></a>
                    </div>
                    <p id="footer-copy">&copy; Copyright 2024 Musicator Inc. and its affiliates</p>
                </div>
            </div>
        </div>
    </footer>
	<!-- Bootstrap Js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>