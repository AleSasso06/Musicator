<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Artista" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Artista</title>
		<link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="style2.css">
	</head>
	
	<body>
	<header>
	<%@ include file="nav.jsp" %>
	</header>
	<%Artista artista = (Artista) request.getAttribute("artista"); %>
	 <button class="btn btn-primary" id="go-top" onclick="goTop();"><i class="bi bi-chevron-up"></i></button>
   	 <main class="overflow-hidden">

		<!-- Inizio Logo -->
        <div class="svg-container mt-3">
           <img alt="" src="images/logo header.svg">
        </div>
        <!-- Fine Logo -->
       
        
    	<div class="container mt-3">
  		<div class="row d-flex align-items-center">
    
	    <!-- inizio foto -->
	    <div class="col-md-4">
	      <picture>
	        <img src="<%=artista.getFoto() %>" class="img-fluid img-thumbnail rounded-circle" alt="..." 
		       style="width: 300px; height: 300px; position: relative; right: -50px; top: -100px; z-index: 10;">
	      </picture>
	    </div>
	    <!-- fine foto -->
    
	    <!-- nome -->
	    <div class="col-md-8 text-center">
	       <h1 style="color: white"><%= artista.getPseudonimo() %></h1>
	    </div>
	    <!-- fine nome -->
    
		</div>
		</div>
    
    	<!-- inizio dati -->
    	
    	  <h6 style="color: white">Nome Artista: <%= artista.getNome() %></h6>
    	  <h6 style="color: white">Data di nascita: <%= artista.getDataNascita() %></h6>
    	  <h6 style="color: white">Nazionalità: <%= artista.getNazionalita() %></h6>
    	  <h6 style="color: white">Biografia: <%= artista.getBiografia() %></h6>
    	  
    	
    	
    	<!-- fine dati -->
      
		
		<!-- inizio footer -->
        <footer class="footer bg-light text-center py-3">
		        <div class="container">
		            <p class="text-muted">© 2024 Musicator. Tutti i diritti riservati.</p>
		        </div>
		 </footer>
		<!--  fine footer -->
	
	<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
	</body>
</html>