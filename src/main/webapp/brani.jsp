<%@page import="java.util.List"%>
<%@page import="it.generationitaly.musicator.entity.Brano"%>
<%@page import="it.generationitaly.musicator.entity.Album"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Musicator - Brani </title>
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
		 .song-card {
		    width: 400px;
		    height: 122px; 
		    opacity: 0.9;
		    transition: opacity 0.2s ease;
		    color: #E3F2FD;
		}
		
		.song-img {
		    width: 120px;
		    height: 120px;
		    object-fit: cover;
		}
		
		.card-title {
   			 white-space: normal; /* Permette di andare a capo */
    		word-wrap: break-word; /* Spezza le parole lunghe */
		}

		.card-body {
		    text-align: left;
		    color: black;
		    overflow: hidden; 
		}

        .btn-play {
            font-size: 1.5rem;
            color: #C2185B;
        }
        
        .carousel-control-prev {
    		left: -115px;
		}
		
		.carousel-control-next {
		    right: -115px;
		}


    </style>
</head>

<body>

<%@ include file="nav.jsp" %>

<% List<Brano> brani = (List<Brano>) request.getAttribute("brani"); %>

<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		
			 <!-- Barra di Ricerca -->
			<div class="input-group mb-3">
			<form action="ricerche_specifiche" method="get" class="input-group mb-3">
			  <input type="text" class="form-control" name="artisti" style="border-radius:30px" placeholder="Cerca il tuo artista preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
			 <!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
			 </form>
			</div>
			<!-- Fine Barra di Ricerca -->	
		</div>
			
			<!-- pulsante per tornare indietro -->
    		<a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
			
	<div class="container">
	
    <!-- carosello -->
   <div id="caroselloBrani" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
    <div class="carousel-inner">
        <% 
        int braniPerSlide = 12; // Numero di card per slide
        int numeroDiBrani = brani.size();
        boolean isFirstSlide = true;

        for (int i = 0; i < numeroDiBrani; i += braniPerSlide) {
        %>
        <div class="carousel-item <%= isFirstSlide ? "active" : "" %>">
           <div class="row justify-content-center d-flex align-items-stretch">
                <% 
                // Mostra fino a braniPerSlide card per slide
                for (int j = i; j < i + braniPerSlide && j < numeroDiBrani; j++) {
                    Brano brano = brani.get(j);
                %>
                <div class="col-md-5 col-lg-4 mb-3">
    				<div class="card song-card">
                        <div class="row no-gutters align-items-center">
                            <div class="col-auto">
                                <% if (!brano.getAlbum().isEmpty()) { %>
                                    <img src="<%= brano.getAlbum().get(0).getFoto() %>" height="110" class="rounded song-img" alt="...">
                                <% } %>
                            </div>
                            <div class="col">
                                <div class="card-body p-2">
                                    <a class="card-title h5" href="brano?id=<%= brano.getId() %>">
                                        <h6 class="card-title text-start"><%= brano.getTitolo() %></h6>
                                    </a>
                                    <p class="card-title text-start"><%= brano.getAlbum().get(0).getTitolo() %></p>
                                    <p class="card-title text-start"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></p>
                                </div>
                            </div>
                            <div class="col-auto">
                                <a class="btn btn-play" href="<%= brano.getYtLink() %>" target="blank">
                                    <i class="bi bi-play-circle-fill"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %> <!-- Fine ciclo per braniPerSlide -->
            </div>
        </div>
        <% 
            isFirstSlide = false; 
        } %> <!-- Fine ciclo per le slide -->
    </div>

    <!-- Controlli del Carosello -->
    <button class="carousel-control-prev" type="button" data-bs-target="#caroselloBrani" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#caroselloBrani" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
</div>


<%@ include file="footer.jsp" %>
<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>