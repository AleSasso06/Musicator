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
        .card {
            width: 18rem;
        }
        .card-img-top {
            height: 15rem;
            object-fit: cover;
        }
        .genre-header {
            text-align: center;
            margin-top: 2rem;
        }
        .genre-description {
            text-align: center;
            margin: 2rem 0;
        }
        .footer {
            margin-top: 3rem;
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

<%@ include file="nav.jsp" %>
<div class="container mt-5">
    <% Genere genere = (Genere) request.getAttribute("genere"); %>
   
    <% 
    List<Album> albums = (List<Album>) request.getAttribute("albums"); 
    if (albums != null && !albums.isEmpty()) { 
    %>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% for(Album album : albums) { %>
            <div class="col mb-3">
                <div class="card">
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
    <p>Nessun album trovato per questo genere.</p>
    <% 
    } 
    %>

    <h3>Brani</h3>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% 
        List<Brano> brani = (List<Brano>) request.getAttribute("brani"); 
        if (brani != null && !brani.isEmpty()) { 
        %>
        <% for(Brano brano : brani) { %>
            <div class="col mb-3">
                <div class="card">
                    <div class="card-body text-center">
                        <a class="card-title h5" href="brano?id=<%= brano.getId() %>"><%= brano.getTitolo() %></a>
                    </div>
                </div>
            </div>
        <% } %>
        <% 
        } else { 
        %>
        <p>Nessun brano disponibile per questo genere.</p>
        <% } %>
    </div>

    <%@ include file="footer.jsp" %>
</div>

<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
