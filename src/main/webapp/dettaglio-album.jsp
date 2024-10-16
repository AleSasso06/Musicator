<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.*"%>
<%@ page import ="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<%@ include file="nav.jsp" %>
<%Album album = (Album) request.getAttribute("album"); %>
<% List <Brano> brani = album.getBrano(); %>
<div class="pt-3"></div>


             <div class="svg-container mt-3">
           <img alt="" src="images/logo header.svg"  style="opacity: 0.7; transition: opacity 0.3s ease;">
        </div>

        
       <!--   <div class="container min-vh-10 d-flex justify-content-center mt-5 ">
        
       <h1 >Album</h1>
        </div>-->
      
        <div class="container">
        <div class="row">
        <div class="col">
             <picture>
        <img src="<%=album.getFoto() %> " class="img-thumbnail" alt="..." style="widht:300px; height:300px; position:relative; right:-50px; top:-100px; z-index:10px">
        </picture>
       </div> 
       
        <div class="col-8 mt-4">
        <ul style="list-style-decoration:none; color:white">
        <li>Titolo:<%=album.getTitolo() %></li>
        <li>Artista:<%=album.getArtista().getPseudonimo() %></li>
        <li>Genere:<%=album.getGenere().getNome() %></li>
        <li>Durata:<%=album.getDurata() %></li>
        <li>Data di Uscita:<%=album.getDataUscita() %></li>
         <li>Descrizione:<%=album.getDescrizione() %></li>
        </ul>
        </div>  
        </div>
        
        </div>
        
        <div class="container min-vh-10 d-flex  justify-content-center mt-5">
   <h1 style="color:white" > Elenco brani</h1>
</div>

<%for (Brano brano : brani){%>
<div class="container mt-5 ">

	<div class="card mb-3 ms-3" style="max-width: 1000px;">
		<div class="row g-0">
			<div class="col-md-4">
				<img src="<%=brano.getFoto()%>" class="img-fluid rounded-start"
					alt="...">
			</div>
			<div class="col-md-8">
				<div class="card-body">
					<form action="brano" method="get">

						 <a class="card-title h3" href="brano?id=<%= brano.getId() %>"><%= brano.getTitolo() %></a>
						<!-- per il momento non scrivere l'album e arrivarci attraverso servlet?-->
						<p style="color:black" class="card-text"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></p>
						<!-- inserire l'artista sempre attraverso lo stesso giro -->
						<p class="card-text">
							<small class="text-body-secondary">Artista </small>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	</div>
<%} %>
	
	

	

<!-- <div class="container">
<ol >
       <li style="padding:20px; margin-bottom: 5px; background-color:white ;  border-radius: 4px;">Foto-Titolo canzone 
       </li>
    </ol>
    
</div> -->

<%@ include file="footer.jsp" %>

    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <!-- Swiper JS library -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- headroom JS library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/headroom/0.12.0/headroom.min.js" integrity="sha512-9UsrKTYzS9smDm2E58MLs0ACtOki+UC4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- AOS JS library-->
    <!-- <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/3.0.0-beta.6/aos.js" integrity="sha512-tnNM6PPNOVfZ5sGPw6hThCrcUBeqt2mVEk3EAj8tCtuMHqbuVm5/HsZagrr8W2aaFE+6rKIByGwQbEnmodrYVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Script locali -->
    <script src="assets/javascript/bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>