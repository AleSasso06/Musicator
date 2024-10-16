<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Artista" %>
<%@page import= "it.generationitaly.musicator.entity.Album" %>
<%@page import= "it.generationitaly.musicator.entity.Genere" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Artista</title>
		<link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
		<!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
	</head>
	
	<body>
	<header>
	<%@ include file="nav.jsp" %>
	</header>
	
	<%Artista artista = (Artista) request.getAttribute("artista"); %>
	<%List<Album> albums = artista.getAlbum(); %>
	
	 <button class="btn btn-primary" id="go-top" onclick="goTop();"><i class="bi bi-chevron-up"></i></button>
   	 <main class="overflow-hidden">

		<!-- Inizio Logo -->
        <div class="svg-container mt-3">
           <img alt="" src="images/logo header.svg"  style="opacity: 0.7; transition: opacity 0.3s ease;">
        </div>
        <!-- Fine Logo -->
       
        
    	<div class="container mt-5">
  		<div class="row align-items-center">
    
	    <!-- inizio foto -->
	    <div class="col-md-4">
	      <picture>
	        <img src="<%=artista.getFoto() %>" class="img-fluid img-thumbnail rounded-circle" alt="..." 
		       style="width: 300px; height: 300px; object-fit: cover; position: relative; right: -50px; top: -200px; z-index: 10;">
	      </picture>
	    </div>
	    <!-- fine foto -->
    
	    <!-- nome -->
	    <div class="col-md-4 text-md-start  text-center">
	         <h1 class="display-3 text-light text-center" style="position: relative; top: -150px;"><%= artista.getPseudonimo() %></h1>
	    </div>
	    <!-- fine nome -->
    	</div>
		</div>
	
    	<div style="position: relative; top: -150px;">
    	<!-- inizio dati -->
    	<div class="container mt">
   		 <div class="col-md-8 mx-auto text-light text-align: justify">
       	 <p><strong>Nome Artista:</strong> <%= artista.getNome() %></p>
       	 <p><strong>Data di nascita:</strong> <%= artista.getDataNascita() %></p>
       	 <p><strong>Nazionalità:</strong> <%= artista.getNazionalita() %></p>
       	 <p><strong>Biografia:</strong> <%= artista.getBiografia() %></p>
      </div>
   </div>
    	<!-- fine dati -->
      
      
      
		<!-- inizio album -->
		<hr>
		<h3 class="text-light text-center" >Album</h3>
			<div class="container min-vh-10 d-flex  justify-content-center mt-5">
			<% System.out.println(albums);
			for (Album album : albums) { %>
				<a class="card-title h5" href="album?id=<%= album.getId() %>">
					<div class="col-p-3 mx-4 mb-4">
						<div class="card" style="width: 250px;">
							<img style="object-fit: cover;" src="<%= album.getFoto() %>" height="250" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title text-center"><%= album.getTitolo() %></h5>
							</div>
						</div>
					</div>
				</a>
			<% } %>
			</div>
		<!-- fine album -->
		</div>
		
		<!-- inizio footer -->
       <%@ include file="footer.jsp" %>
		<!--  fine footer -->
	
	<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
	</body>
</html>