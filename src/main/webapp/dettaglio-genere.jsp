<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="it.generationitaly.musicator.entity.Brano" %>
<%@page import="it.generationitaly.musicator.entity.Album" %>
<%@page import="it.generationitaly.musicator.entity.Genere" %>
<%@page import="it.generationitaly.musicator.entity.Artista" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dettaglio Genere</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="style2.css">
    <style>
        
        body {
            background-color: #08263C;
        }
      
     
         </style>
</head>
<body>
<div class="container-lg">
<%@ include file="nav.jsp" %>
        
       
	<div class="genere"> 
    <% Genere genere = (Genere) request.getAttribute("genere"); %>
   </div>
     
    <% 
    List<Album> albums = (List<Album>) request.getAttribute("album"); 
    if (albums != null && !albums.isEmpty()) { 
    %>
  <div class="row row-cols-1 row-cols-md-3 g-4"> --> 
        <% for(Album album : albums) { %>
           <div class="col mb-5">
                    <div class="album">
                  <!--    <img src="images/album.jpg" alt="Album cover"> -->
                   <div class="card-body text-center">
                        <a class="card-title h5" href="album?id=<%= album.getId() %>"><%= album.getTitolo() %></a>
                    </div>
                </div>
            </div>
        <% } %>
    </div>
    <% 
    } else { 
    %>
   <!--  <p>Nessun album trovato per questo genere.</p>-->
    <% 
    } 
    %>
</div>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% 
        List<Brano> brani = (List<Brano>) request.getAttribute("brani"); 
        if (brani != null && !brani.isEmpty()) { 
        %>
        <% for(Brano brano : brani) { %>
            <div class="brano mb-3">
            <!--  <img src="album.jpg" alt="Brano cover"> -->
                     <div class="card-body text-center"> 
                        <a class="card-title h5" href="brano?id=<%= brano.getId() %>"><%= brano.getTitolo() %></a>
                    </div>
                </div>
            </div>
        <% } %>
        <% 
        } else { 
        %>
       <p  style="color: white;">Nessun brano disponibile per questo genere.</p>
        <% } %>
    </div>
 
  <%@ include file="footer.jsp" %> 
</div>

<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
