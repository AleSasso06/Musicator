<%@page import="java.util.List"%>
<%@page import="it.generationitaly.musicator.entity.Brano"%>
<%@page import="it.generationitaly.musicator.entity.Album"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
<%

	List<Brano> brani = (List<Brano>) request.getAttribute("brani");
	%>
	<%@ include file="nav.jsp"%>
	
 <!-- Barra di Ricerca -->
			<div class="input-group mb-3">
			<form action="ricerche_specifiche" method="get" class="input-group mb-3">
			  <input type="text" class="form-control" name="brani" style="border-radius:30px" placeholder="Cerca il tuo brano preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
			 <!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
			 </form>
			</div>
			<!-- Fine Barra di Ricerca -->
	<%
	for (Brano brano : brani) {
	%>
	
			<!-- inizio card -->
	<div class="card mb-3 ms-3" style="max-width: 1000px;">
		<div class="row g-0">
			<div class="col-md-4">
				<img src="<%=brano.getFoto()%>" class="img-fluid rounded-start"
					alt="...">
			</div>
			<div class="col-md-8">
				<div class="card-body">
					<form action="brano" method="get">

						 <a class="card-title h3" href="brano?id=<%= brano.getId() %>"><%= brano.getTitolo() %></a>
						<!-- per il momento non scrivere l'album e arrivarci attraverso servlet?-->
						<p class="card-text"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></p>
						<!-- inserire l'artista sempre attraverso lo stesso giro -->
						<p class="card-text">
							<small class="text-body-secondary">Artista </small>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%
	}
	%>



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