<%@page import="it.generationitaly.musicator.entity.Brano"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brano</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
		<!-- Import Font Awesome 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">-->
				
		<!-- Font -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

		
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
	    
	    <style>
	     .btn-play {
            font-size: 3rem;
            color:#C2185B;
        }
        
        .song-card {
            background-color: rgba(255, 255, 255, 0.5); /* opacità al background */
            transition: opacity 0.3s ease;
            padding: 15px; 
        }
        
        .img-thumbnail {
            margin: 10px;
          
        }
       
	    </style>
</head>
<body>
	<header>
	<%@ include file="nav.jsp" %>
	    <!-- ELEMENTI FIXED -->
    <%@ include file="goTop.jsp" %>
	
	
	
	</header>
	<button class="btn btn-primary" id="go-top" onclick="goTop();"><i class="bi bi-chevron-up"></i></button>
   	 <main class="overflow-hidden">



<%
Brano brano = (Brano) request.getAttribute("brano");
%>

    <!-- card -->
   <div class="row justify-content-center mt-1">
    <div class="card mb-3 song-card d-flex justify-content-between align-items-center" style="opacity: 0.8; transition: opacity 0.3s ease;">
        <div class="row g-0 align-items-center">
            <div class="col-md-3 d-flex justify-content-end align-items-start">
            	<a href="album?id=<%= brano.getAlbum().get(0).getId() %> ">
              		<img src="<%=brano.getAlbum().get(0).getFoto() %>" class="img-fluid img-thumbnail" alt="Album Image" style="max-width: 450px; height: 250px;">
				</a>
            </div>
            <div class="col-md-6 d-flex flex-column justify-content-end align-items-center">
                <div class="card-body">
                    <h3 class="card-title"><%=brano.getTitolo() %></h3>
                     <a class="card-title h5" href="album?id=<%= brano.getAlbum().get(0).getId() %>">
                    <h5 class="card-title"><%=brano.getAlbum().get(0).getTitolo() %></h5>
                    </a>
                    <a class="card-title " href="artista?id=<%= brano.getAlbum().get(0).getArtista().getId() %>">
                    <p class="card-title"><b><%=brano.getAlbum().get(0).getArtista().getPseudonimo() %></b></p>
                    </a>
                    <% if (brano.getDurata()%60 < 10) { %>
                        <%=((brano.getDurata()/60)%60) %>:0<%=(brano.getDurata()%60)%><br>
                    <% } else { %>
                        <%=((brano.getDurata()/60)%60) %>:<%=(brano.getDurata()%60)%><br>
                    <% } %>
                    <small class="text-body-secondary"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></small>
                </div>
            </div>
            <!-- tasto play -->
            <div class="col-md-2 d-flex justify-content-center me-auto">
                <a class="btn btn-play" href="<%= brano.getYtLink() %>" target="blank">
                    <i class="bi bi-play-circle-fill"></i>
                </a>
            </div>
        </div>
    </div>
</div>

    <!-- fine card -->

    <!-- pulsante per tornare indietro -->
    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
    

    <!-- testo della canzone -->
    <div class="row justify-content-center  align-items-center" style="top: -150px" >
        <div class="col-md-3" >
            <div class="text-light text-justify" >
                <p><%=brano.getTesto() %></p>
            </div>
        </div>
    </div>
    <!--  fine testo -->

    <!-- Footer -->
    <%@ include file="footer.jsp" %>

	<!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw==" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <!-- Script locali -->
    <script src="bs5.js"></script>

</body>
</html>