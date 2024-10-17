<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="it.generationitaly.musicator.entity.Brano" %>
<%@ page import="it.generationitaly.musicator.entity.Album" %>
<%@ page import="it.generationitaly.musicator.entity.Genere" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina Musicator</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">

    <!-- File CSS personalizzato -->
    <link rel="stylesheet" href="style2.css">

    <style>
        /* Aggiunta di stili personalizzati */
        .brano {
            background-color: #C2185B;
            border-radius: 5px;
            padding: 10px;
            color: white;
            margin-bottom: 15px;
        }

        .album-card {
            margin-bottom: 20px;
        }

        .no-content {
            text-align: center;
            color: white;
            margin-top: 50px;
        }

        .min-vh-100 {
            min-height: 100vh;
        }

        footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
        }
    </style>
</head>
<body>

<header>
    <%@ include file="nav.jsp" %>
    	</header>
    
   
   <%Genere genere = (Genere)request.getAttribute("genere"); %>
	<!-- Inizio Logo -->
	<div class="svg-container mt-3">
           <img alt="" src="images/logo header.svg"  style="opacity: 0.7; transition: opacity 0.3s ease;">
        </div>
           <!-- Fine Logo -->
           
   
       
<!--  
<form action="inserisciGenere" method="POST">
<div id="genereButtons" class="d-grid gap-2 col-6 mx-auto"></div>
<h1 class="text-center my-5" style="color: #E3F2FD;">Elenco Generi Musicali</h1>
</form>  -->

    <!--   
  <div class="container justify-content-center mt-5">
    	<form action="ricerche_specifiche" method="get" class="input-group mb-3">
        <label for="brani" class="form-label"></label>
        <input type="text" class="form-control" id="brani" name="brani" placeholder="Brani">
         </form>
          --> 
   

			
          
   <%  List<Brano> brani = genere.getBrani();	 %>
        	<!-- Griglia delle card -->
		<div class="row">
		<% if (brani != null && !brani.isEmpty()) { %>
		<h2 style="margin-bottom: 15px; text-align: center;">Brani</h2>
		
	
			<% for (Brano brano : brani) { %>
			<div class="col-md-6 mb-3">
				<div class="card song-card">
					<div class="row no-gutters align-items-center">
						<div class="col-auto">
							<img
								src="<%=brano.getAlbum().get(0).getFoto()%>"
								height="110" class="rounded song-img" alt="...">
						</div>
						<div class="col">
							<div class="card-body">
								<a class="card-title h5" href="brano?id=<%= brano.getId() %>">
									<h5 class="card-title"><%= brano.getTitolo() %></h5>
								</a>
								<!-- <a href="artista?id=<% // %>"><p class="text-dark card-text"><% // %></p></a> -->
							</div>
						</div>
						<div class="col-auto">
							<a class="btn btn-play" href="brano?id=<%= brano.getId() %>">
								<i class="bi bi-play-circle-fill"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<% } %>
			<% } else { %>
			<p></p>
		<% } %>
			<!-- Ripeti per altre card -->
		</div>


   
   
            <% 
            List<Album> albums = genere.getAlbum();   %>
        
  <% if (albums != null && !albums.isEmpty()) { %>
			<h2 style="margin-bottom: 15px; text-align: center;">Album</h2>
			
			<div class="container min-vh-10 d-flex  justify-content-center mt-5">
			<% for (Album album : albums) { %>
				<a class="card-title h5" href="album?id=<%= album.getId() %>">
					<div class="col-p-3 mx-4 mb-4">
						<div class="card" style="width: 275px;">
							<img style="object-fit: cover;" src="<%= album.getFoto() %>" height="275" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title text-center"><%= album.getTitolo() %></h5>
							</div>
						</div>
					</div>
				</a>
			<% } %>
			</div>
		<% } else { %>
			<p></p>
		<% } %>  
    
  
<%@ include file="footer.jsp" %>
   
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
