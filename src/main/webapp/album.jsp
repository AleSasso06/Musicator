<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Album" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>Album</title>
		 <!-- Bootstrap css -->
 		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
		
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
			      <img src="<%= album.getFoto() %>" class="card-img-top" alt="..." >
			      <div class="card-body text-center">
			        <a style="text-decoration:none"class="card-title h5" href="album?id=<%= album.getId() %>"><%= album.getTitolo() %></a>
			      </div>
			    </div>
			  </div>
			  <%} %>
		</div>
		
		<%@ include file="footer.jsp" %>
		
		<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
	</body>

</html>