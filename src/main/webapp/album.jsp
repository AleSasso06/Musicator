<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Album" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>Album</title>
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
		<%List<Album> albums = (List<Album>) request.getAttribute("albums"); %>
		<%@ include file="nav.jsp" %>
		
		<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		
			 <!-- Barra di Ricerca -->
			<div class="input-group mb-3">
			<form action="ricerche_specifiche" method="get" class="input-group mb-3">
			  <input type="text" class="form-control" name="album" style="border-radius:30px" placeholder="Cerca il tuo album preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
			 <!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
			 </form>
			</div>
			<!-- Fine Barra di Ricerca -->	
		</div>
			
			<div class="container">
			<!-- inizio card -->
			<div class="row row-cols-1 row-cols-md-3 g-4">
			<%for(Album album : albums) {%>
			  <div class="col-md-4 d-flex justify-content-center mb-3">
			  
			    <div class="card">
			      <img src="<%= album.getFoto() %>" class="card-img-top" alt="..." ">
			      <div class="card-body text-center">
			        <a class="card-title h5" href="artista?id=<%= album.getId() %>"><%= album.getTitolo() %></a>
			      </div>
			    </div>
			  </div>
			  <%} %>
		</div>
		<!-- fine card -->
		
		<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
	</body>
</html>