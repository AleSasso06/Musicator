<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<img src="images/img_album/lady gaga B.webp"
								class="img-fluid rounded-start song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">Die With A Smile</h5>
								<p class="card-text">Lady Gaga & Bruno Mars</p>
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
							<img src="path-to-image2.jpg"
								class="img-fluid rounded-start song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<h5 class="card-title">Good Luck, Babe!</h5>
								<p class="card-text">Chappell Roan</p>
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