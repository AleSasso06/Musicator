<%@page import="java.util.List"%>
<%@page import="it.generationitaly.musicator.entity.Brano"%>
<%@page import="it.generationitaly.musicator.entity.Album"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <!-- Bs Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- css locali -->
    <link rel="stylesheet" href="style2.css">
    <!-- Import Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Swiper css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    
    <style>
        /* Imposta una larghezza fissa per tutte le card */
        .song-card {
            width: 550px; /* Definisci una larghezza fissa per garantire uniformità */
            opacity: 0.7;
            transition: opacity 0.5s ease;
        }

        .card-body {
            text-align: center; /* Allinea il testo al centro */
        }

        .btn-play {
            font-size: 1.5rem;
            color: #007bff;
        }
    </style>
</head>

<body>

<%@ include file="nav.jsp" %>

<% List<Brano> brani = (List<Brano>) request.getAttribute("brani"); %>

<div class="container justify-content-center mt-5">
    <!-- Barra di Ricerca -->
    <div class="input-group mb-3">
        <form action="ricerche_specifiche" method="get" class="input-group mb-3">
            <input type="text" class="form-control" name="brani" style="border-radius:30px" placeholder="Cerca il tuo brano preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
        </form>
    </div>
    <!-- Fine Barra di Ricerca -->

    <!-- Griglia delle card -->
    <div class="row justify-content-center">
        <% if (!brani.isEmpty()) { %>
            <% for (Brano brano : brani) { %>
                <div class="col-12 mb-3 d-flex justify-content-center">
                    <div class="card song-card">
                        <div class="row no-gutters align-items-center">
                            <div class="col-auto">
                            <% if (!brano.getAlbum().isEmpty()){%>
                                <img src="<%= brano.getAlbum().get(0).getFoto() %>" height="110" class="rounded song-img" alt="...">
                            </div>
                            <div class="col">
                                <div class="card-body p-2">
                                    <a class="card-title h5" href="brano?id=<%= brano.getId() %>">
                                        <h5 class="card-title text-start"><%= brano.getTitolo() %></h5>
                                    </a>
                                     <h6 class="card-title text-start">da inserire Album?</h6>
                                     <h6 class="card-title text-start"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></h6>
                                </div>
                                   <% } %> 
                            </div>
                            <div class="col-auto">
                                <a class="btn btn-play" href="<%= brano.getYtLink() %>">
                                    <i class="bi bi-play-circle-fill"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div> 
            <% } %>
        <% } else { %>
            <p>Nessun brano trovato.</p>
        <% } %>
    </div>
</div>

<%@ include file="footer.jsp" %>
<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>