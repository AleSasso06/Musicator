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

   
    <%@ include file="nav.jsp" %>
    
    <div class="container">
	 <br>
	
<!-- 
<form action="inserisciGenere" method="POST">
<div id="genereButtons" class="d-grid gap-2 col-6 mx-auto"></div>
<h1 class="text-center my-5" style="color: #E3F2FD;">Elenco Generi Musicali</h1>
</form>  -->
	</div> 
    <div class="mb-3">
        <label for="nomeGenere" class="form-label">ricerca genere</label>
        <input type="text" class="form-control" id="nomeGenere" name="nomeGenere" required>
    </div>
  
        <div class="mb-3">
 <form action="ricerche_specifiche" method="get" class="input-group mb-3">
        <label for="artisti" class="form-label">Brani</label>
        <input type="text" class="form-control" id="artisti" name="artisti" placeholder="Brani">
   
    </form>
     </div>

            <% 
            List<Brano> brani = (List<Brano>) request.getAttribute("brani"); 
            if (brani != null && !brani.isEmpty()) { 
            %>
                <% for (Brano brano : brani) { %>
                 
                    <div class="col-12 mb-3 d-flex justify-content-center">
                    <div class="card song-card">
                        <div class="row no-gutters align-items-center">
                            <div class="col-auto">
                                <img src="<%= brano.getFoto() %>" height="110" class="rounded song-img" alt="...">
                            </div>
                            <div class="col">
                                <div class="card-body p-2">
                                    <a class="card-title h5" href="brano?id=<%= brano.getId() %>">
                                        <h5 class="card-title text-start"><%= brano.getTitolo() %></h5>
                                    </a>
                                     <h6 class="card-title text-start">da inserire Album?</h6>
                                     <h6 class="card-title text-start"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></h6>
                                </div>
                            </div>
                            <div class="col-auto">
                    
                        <a href="brano?id=<%= brano.getId() %>" class="text-white"><%= brano.getTitolo() %></a>
                    </div>
                                             
                        </div>
                    </div>
                </div>
                <% } %>
            <% 
            } else {  %>
                <p></p>
            <% 
            } 
            %>
    <div class="mb-3">
    	<form action="ricerche_specifiche" method="get" class="input-group mb-3">
        <label for="album" class="form-label">Album </label>
        <input type="text" class="form-control" id="album" name="album" placeholder="Album">
         </form>
        
            <% 
            List<Album> albums = (List<Album>) request.getAttribute("album"); 
            if (albums != null && !albums.isEmpty()) { 
            %>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <% for (Album album : albums) { %>
                         <div class="col-md-4 d-flex justify-content-center mb-3">
			  
			    <div class="card">
                                <img src="images/album.jpg" class="card-img-top" alt="Copertina album">
                                
                                    <h5 class="card-title"><%= album.getTitolo() %></h5>
                                    <a href="album?id=<%= album.getId() %>" class="btn btn-primary">Visualizza Album</a>
                                </div>
                            </div>
                       </div>
                    <% } %>
           
            <% 
            } else { 
            %>
                <p></p>
            <% 
            } 
            %>
    </div>
    
    
    
  
<%@ include file="footer.jsp" %>
   
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
