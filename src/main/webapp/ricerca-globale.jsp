<%@page import="org.hibernate.internal.build.AllowSysOut"%>
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
<title>Musicator - Risultati Ricerca</title>
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

.song-card {
	height: 122px;
	opacity: 0.9;
	transition: opacity 0.2s ease;
	color: #E3F2FD;
}

.song-img {
	width: 120px;
	height: 120px;
	object-fit: cover;
}

.card-title {
	white-space: normal; /* Permette di andare a capo */
	word-wrap: break-word; /* Spezza le parole lunghe */
}

.card-body {
	text-align: left;
	color: black;
	overflow: hidden;
}

.btn-play {
	font-size: 1.5rem;
	color: #C2185B;
}

.carousel-control-prev {
	left: -175px;
}

.carousel-control-next {
	right: -175px;
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
				<h1 style="padding: 50px 50px 40px 0px; text-align: left;"
					class="fw-bold text-light h1center">
					Risultati ricerca '<%=request.getAttribute("inputUtente")%>'
				</h1>
			</div>
		</div>

		<!-- Griglia delle card -->
		<%
		if (!brani.isEmpty()) {
		%>
		<h2 style="margin-bottom: 15px;">Brani</h2>
		<!-- carosello -->
		<div id="caroselloBrani" class="carousel slide"
			data-bs-ride="carousel" data-bs-interval="30000">
			<div class="carousel-inner">
				<%
				int braniPerSlide = 12; // Numero di card per slide
				int numeroDiBrani = brani.size();
				boolean isFirstSlide = true;

				for (int i = 0; i < numeroDiBrani; i += braniPerSlide) {
				%>
				<div class="carousel-item <%=isFirstSlide ? "active" : ""%>">
					<div class="row justify-content-center d-flex align-items-stretch">
						<%
						// Mostra fino a braniPerSlide card per slide
						for (int j = i; j < i + braniPerSlide && j < numeroDiBrani; j++) {
							Brano brano = brani.get(j);
						%>
						<div class="col-md-5 col-lg-4 mb-3">
							<div class="card song-card">
								<div class="row no-gutters align-items-center">
									<div class="col-auto">
										<%
										if (!brano.getAlbum().isEmpty()) {
										%>
										<img src="<%=brano.getAlbum().get(0).getFoto()%>" height="110"
											class="rounded song-img" alt="...">
										<%
										}
										%>
									</div>
									<div class="col">
										<div class="card-body p-1">
											<a class="card-title" href="brano?id=<%=brano.getId()%>">
												<p class="card-title text-start">
													<b><%=brano.getTitolo()%></b>
												</p>
											</a> <a href="album?id=<%=brano.getAlbum().get(0).getId()%>"
												style="color: black">
												<p class="card-title text-start"><%=brano.getAlbum().get(0).getTitolo()%></p>
											</a> <small class="card-title text-start"><%=new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita())%></small>
										</div>
									</div>
									<div class="col-auto">
										<a class="btn btn-play" href="<%=brano.getYtLink()%>"
											target="blank"> <i class="bi bi-play-circle-fill"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
						<%
						}
						%>
						<!-- Fine ciclo per braniPerSlide -->
					</div>
				</div>
				<%
				isFirstSlide = false;
				}
				%>
				<!-- Fine ciclo per le slide -->
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#caroselloBrani" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#caroselloBrani" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<%
		} else {
		%>
		<p></p>
		<%
		}
		%>

		<%
		if (!artisti.isEmpty()) {
		%>
		<h2 style="margin-bottom: 15px; margin-top: 15px">Artisti</h2>
		<div id="caroselloArtisti" class="carousel slide"
			data-bs-ride="carousel" data-bs-interval="30000">
			<div class="carousel-inner">
				<%
				int artistiPerSlide = 4; // Numero di card per slide
				int numeroDiArtisti = artisti.size();
				boolean isFirstSlide = true;
				for (int i = 0; i < numeroDiArtisti; i += artistiPerSlide) {
				%>
				<div class="carousel-item <%=isFirstSlide ? "active" : ""%>">
					<div class="row d-flex justify-content-center">
						<%
						// Mostra fino a artistiPerSlide card per slide
						for (int j = i; j < i + artistiPerSlide && j < numeroDiArtisti; j++) {
							Artista artista = artisti.get(j);
						%>
						<div class="col-3 d-flex justify-content-center mb-4">
							<!-- Modificato qui -->
							<a class="card" href="artista?id=<%=artista.getId()%>" style="width: 285px;"> 
							<img src="<%=artista.getFoto()%>" style="object-fit: cover; height: 285px;" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title text-center"><%=artista.getPseudonimo()%></h5>
								</div>
							</a>
						</div>
						<%
						}
						%>
						<!-- Fine ciclo per artistiPerSlide -->
					</div>
				</div>
				<%
				isFirstSlide = false;
				}
				%>
				<!-- Fine ciclo per le slide -->
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#caroselloArtisti" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#caroselloArtisti" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<%
		} else {
		%>
		<p></p>
		<%
		}
		%>
		
		<%
		if (!albums.isEmpty()) {
		%>
		<h2 style="margin-bottom: 15px; margin-top: 15px">Album</h2>
		<div id="caroselloAlbum" class="carousel slide"
			data-bs-ride="carousel" data-bs-interval="30000">
			<div class="carousel-inner">
				<%
				int albumPerSlide = 4; // Numero di card per slide
				int numeroDiAlbum = albums.size();
				boolean isFirstSlide = true;
				for (int i = 0; i < numeroDiAlbum; i += albumPerSlide) {
				%>
				<div class="carousel-item <%=isFirstSlide ? "active" : ""%>">
					<div class="row justify-content-center">
						<%
						// Mostra fino a artistiPerSlide card per slide
						for (int j = i; j < i + albumPerSlide && j < numeroDiAlbum; j++) {
							Album album = albums.get(j);
						%>
						<div class="col-3 d-flex justify-content-center mb-4">
							<a class="card-title h5" href="album?id=<%=album.getId()%>">
								<div class="col-p-3 mx-4 mb-4">
									<div class="card" style="width: 285px;">
										<img style="object-fit: cover;" src="<%=album.getFoto()%>"
											height="285" class="card-img-top" alt="...">
										<div class="card-body">
											<h5 class="card-title text-center"><%=album.getTitolo()%></h5>
										</div>
									</div>
								</div>
							</a>
						</div>
						<%
						}
						%>
						<!-- Fine ciclo per artistiPerSlide -->
					</div>
				</div>
				<%
				isFirstSlide = false;
				}
				%>
				<!-- Fine ciclo per le slide -->
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#caroselloAlbum" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#caroselloAlbum" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<%
		} else {
		%>
		<p></p>
		<%
		}
		%>

		<%
		if (!generi.isEmpty()) {
		%>
		<h2 style="margin-bottom: 15px; margin-top: 15px">Generi</h2>
		<div class="row row-cols-1 d-flex g-4 justify-content-center">
			<div class="row row-cols-1 row-cols-md-3 g-4"></div>
			<%
			for (Genere genere : generi) {
			%>
			<div class="col-md-4">
				<button type="button"
					class="btn btn-secondary btn-lg w-100 button-spacing"
					onclick="window.location.href='genere?id=<%=genere.getId()%>'">
					<%=genere.getNome()%>
				</button>
			</div>
			<%
			}
			%>
		</div>
		<%
		} else {
		%>
		<p></p>
		<%
		}
		%>
		
		<%
		System.out.println(playlists);
		if (!playlists.isEmpty()) {
		%>
		<h2 style="margin-bottom: 15px; margin-top: 15px">Playlist</h2>
		<div class="container min-vh-10 d-flex justify-content-center mt-5">
			<%
			for (Playlist playlist : playlists) {
			%>
			<a class="card-title h5" href="playlist?id=<%=playlist.getId()%>">
				<div class="col-p-3 mx-4 mb-4">
					<div class="card" style="width: 275px;">
						<img src="<%=playlist.getFoto()%>" height="275"
							class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title text-start"><%=playlist.getTitolo()%></h5>
							<p class="card-text text-secondary text-end fs-6">
								Di
								<%=playlist.getUtente().getUsername()%></p>
						</div>
					</div>
				</div>
			</a>
			<%
			}
			%>
		</div>
		<%
		} else {
		%>
		<p></p>
		<%
		}
		%>
	</div>
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