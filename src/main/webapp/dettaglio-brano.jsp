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
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
        }
        .card-body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100%;
        }
       
	    </style>
</head>
<body>
	<header>
	<%@ include file="nav.jsp" %>
	</header>
	<button class="btn btn-primary" id="go-top" onclick="goTop();"><i class="bi bi-chevron-up"></i></button>
   	 <main class="overflow-hidden">

	
			
<%
Brano brano = (Brano) request.getAttribute("brano");
%>

    <!-- card -->
    <div class="row justify-content-center mt-4">
        <div class="card mb-3 song-card" style="transition: opacity 0.3s ease;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="<%=brano.getAlbum().get(0).getFoto() %>" class="img-thumbnail" alt="..."
                          style="width: 250px; height: 250px; object-fit: cover; position: relative; right: -200px;   margin: 10px; top: 10px; bottom: 10px ">
                </div>
                <div class="col-md-7">
                    <div class="card-body" >
                        <h4 class="card-title"><%=brano.getTitolo() %></h4>
                         <h6 class="card-title text-start"><%=brano.getAlbum().get(0).getTitolo() %></h6>
                            <small class="text-body-secondary"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></small>
                        </p>
                    </div>
                </div>
                <!-- tasto play -->
                <div class="col-md-1 d-flex align-items-center justify-content-end" style="position: relative; left: -350px; ">
                    <a class="btn btn-play" href="<%= brano.getYtLink() %>">
                        <i class="bi bi-play-circle-fill"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- fine card -->

<!-- pulsante per tornare all'index -->
     			   <a href="brani" class="btn-custom"><i class="fas fa-arrow-left"></i></a>

    <!-- testo della canzone -->
     <div class="row justify-content-center mt-4">
        <div class="col-md-3">
            <div class="text-light text-justify">
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
</body>
</html>
