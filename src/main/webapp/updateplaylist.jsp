<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.Playlist" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="it">
<head>


	<meta charset="UTF-8">
		<title>Modifica Playlists</title>
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
	</head>

	
<body>
	
		<% List<Playlist> playlists = (List<Playlist>) request.getAttribute("playlists"); %>
		
		<header>
		<%@ include file="nav.jsp" %>
		</header>
		
		<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		
			 <!-- Barra di Ricerca -->
			<div class="input-group mb-3">
			<form action="ricerche_specifiche" method="get" class="input-group mb-3">
			  <input type="text" class="form-control" name="artisti" style="border-radius:30px" placeholder="Ricerca PlayList" aria-label="Recipient's username" aria-describedby="button-addon2">
			 <!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
			 </form>
			</div>
			<!-- Fine Barra di Ricerca -->	
		</div>
			
			<!-- pulsante per tornare indietro -->
    		<a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
	
			<div class="container">
	 <%if (playlists != null && !playlists.isEmpty()){ %>
			    <%for (Playlist playlist : playlists) {%>
			    <div class="row">
			    	
			    	<a href="playlist?id=<%=playlist.getId()%>">
			    	<div class="col-2">
			    		<img src="<%=playlist.getFoto()%>">
			    	</div>
			    	<div class="col-10">
			    		<span><%=playlist.getTitolo()%></span>
			    	</div>
			    	</a>
			    	
			    </div>
			    <%} 
			} else { %>
		    	<span>Nessuna playlist trovata...</span>
		    <%} %>
		    
		</div>
      
   

	<!-- Footer -->
	<%@ include file="footer.jsp"%>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>

