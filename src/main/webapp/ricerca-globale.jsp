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
	Artista artisti = (Artista) request.getAttribute("artisti");
	%>
	<%
	Playlist playlists = (Playlist) request.getAttribute("playlist");
	%>
	<%
	Genere generi = (Genere) request.getAttribute("generi");
	%>
	<%@ include file="nav.jsp"%>

	<!-- Sezione Classifica Globale -->

	<div class="container">

		<div class="col">
			<div class="p-8">
				<h1 class="fw-bold text-light h1center">
					Risultati ricerca '<%=request.getParameter("inputUtente")%>'
				</h1>
			</div>
		</div>

		<!-- Griglia delle card -->
		<div class="row">
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
								<h5 class="card-title">Die With A Smile</h5>
								<p class="text-dark card-text">Lady Gaga & Bruno Mars</p>
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
			<!-- Ripeti per altre card -->
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://i.scdn.co/image/ab67616d0000b27391b4bc7c88d91a42e0f3a8b7"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">Good Luck, Babe!</h5>
								<p class="text-dark card-text">Chappell Roan</p>
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
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://m.media-amazon.com/images/I/41E4aY7ZVnL._UXNaN_FMjpg_QL85_.jpg"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">m%n</h5>
								<p class="text-dark card-text">thasup</p>
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
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://i.scdn.co/image/ab67616d00001e0289070654f69ee060803403f3"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">QUELLI CHE NON PENSANO - Il cervello</h5>
								<p class="text-dark card-text">Marracash</p>
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
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://i.scdn.co/image/ab67616d00001e0289070654f69ee060803403f3"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">QUELLI CHE NON PENSANO - Il cervello</h5>
								<p class="text-dark card-text">Marracash</p>
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
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://i.scdn.co/image/ab67616d00001e0289070654f69ee060803403f3"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">QUELLI CHE NON PENSANO - Il cervello</h5>
								<p class="text-dark card-text">Marracash</p>
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
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://i.scdn.co/image/ab67616d00001e0289070654f69ee060803403f3"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">QUELLI CHE NON PENSANO - Il cervello</h5>
								<p class="text-dark card-text">Marracash</p>
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
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="https://i.scdn.co/image/ab67616d00001e0289070654f69ee060803403f3"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">QUELLI CHE NON PENSANO - Il cervello</h5>
								<p class="text-dark card-text">Marracash</p>
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
			<!-- Aggiungi altre card simili per ogni canzone -->
		</div>

		<!-- Slider per navigare tra le pagine della classifica -->
		<div class="row mt-4">
			<div class="col d-flex justify-content-end">
				<button class="btn btn-slider-prev">
					<i class="bi bi-arrow-left-circle"></i>
				</button>
				<button class="btn btn-slider-next ms-2">
					<i class="bi bi-arrow-right-circle"></i>
				</button>
			</div>
		</div>
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