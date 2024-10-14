<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Artista" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>Artisti</title>
		<link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>
		<%List<Artista> artisti = (List<Artista>) request.getAttribute("artisti"); %>
		<%@ include file="nav.jsp" %>
		
		<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		
			 <!-- Barra di Ricerca -->
			<div class="input-group mb-3">
			  <input type="text" class="form-control" style="border-radius:30px" placeholder="Cerca il tuo artista preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
			  <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>
			</div>
			<!-- Fine Barra di Ricerca -->	
		</div>
			
			<!-- inizio card -->
			<div class="row row-cols-1 row-cols-md-3 g-4">
			  <div class="col mb-3">
			  <%for(Artista artista : artisti) {%>
			    <div class="card">
			      <img src="<%= artista.getFoto() %>" class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title"><%=artista.getPseudonimo() %></h5>
			      </div>
			    </div>
			  </div>
			  <%} %>
			  <!--  
			  <div class="col">
			    <div class="card">
			      <img src="..." class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">Card title</h5>
			        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
			      </div>
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="..." class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">Card title</h5>
			        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
			      </div>
			    </div>
			  </div>
			  
			  <div class="col">
			    <div class="card">
			      <img src="..." class="card-img-top" alt="...">
			      <div class="card-body">
			        <h5 class="card-title">Card title</h5>
			        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
			      </div>
			    </div>
			  </div>
		</div>
		-->
		<!-- fine card -->
	
		<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
	</body>
</html>