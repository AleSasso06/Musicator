<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="it.generationitaly.musicator.entity.Brano" %>
<%@ page import="it.generationitaly.musicator.entity.Album" %>
<%@ page import="it.generationitaly.musicator.entity.Genere" %>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Pagina Musicator</title>
 <!-- Bootstrap css -->
 		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
				
		<!-- Font -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

		
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

    <style>
      			.card-title-song {
	   			 white-space: nowrap;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    max-width: 175px;
	
			}
			.card-body-song {
			    text-align: left;
			    color: black;
			    overflow: hidden;
			}
      			
			.song-card {
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
				left: -175px;
			}
			
			.carousel-control-next {
				right: -175px;
			}
			
		</style>

</head>
<body>

<header>
    <%@ include file="nav.jsp" %>
        <!-- ELEMENTI FIXED -->
    <%@ include file="goTop.jsp" %>
    
    
    
    	</header>
    	
   <%Genere genere = (Genere)request.getAttribute("genere"); %>
  <%   List<Brano> brani = genere.getBrani();%>
  <%   List<Album> albums = genere.getAlbum();%>
   
   <!-- scritta risultato ricerca -->
	<div class="container">
		<div class="col">
			<div class="p-8">
				<h2 style="text-align: center;"
					class="fw-bold text-light h1center">
					Risultati ricerca '<%= genere.getNome()%>'
				</h2>
			</div>
		</div>
		</div>
		
		 <!-- pulsante per tornare indietro -->
    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
   

 <div class="container min-vh-10 d-flex justify-content-center">
    <div class="container" style="top: -15px;">
        <!-- carosello brani -->
        <% if (brani.isEmpty() && albums.isEmpty()) { %>
			<h5 class="text-center text-light">Nessun risultato trovato</h5>
		<% } else { %>
   
   <% if(brani != null && !brani.isEmpty()){ %>
        <h2 style="text-align: center;">Brani</h2>
        <div id="branoCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <%  
                  
                    int braniPerSlide = 9; 
                    boolean isFirstSlide = true;

                    for (int i = 0; i < brani.size(); i += braniPerSlide) {
                %>
                <div class="carousel-item <%= isFirstSlide ? "active" : "" %>">
                    <div class="row justify-content-center">
                        <% 
                            for (int j = i; j < i + braniPerSlide && j < brani.size(); j++) {
                                Brano brano = brani.get(j);
                        %>
                                        
                     <div class="col-md-5 col-lg-4 mb-3">
								<div class="card song-card" style="overflow: visible !important; position: relative; z-index: 1;">
									<div class="row no-gutters align-items-center">
										<div class="col-auto">
											<%if (!brano.getAlbum().isEmpty()) {%>
												<a href="brano?id=<%=brano.getId()%>">
													<img src="<%=brano.getAlbum().get(0).getFoto()%>" height="110"
														class="rounded song-img" alt="...">
												</a>
											<%}%>
										</div>
										<div class="col">
											<div class="card-body-song p-1">
												<a class="card-title-song" href="brano?id=<%=brano.getId()%>" style="color: black">
													<p class="card-title-song text-start truncate-text" style="color: black">
														<b><%=brano.getTitolo()%></b>
													</p>
												</a> 
												<a href="album?id=<%=brano.getAlbum().get(0).getId()%>"
													style="color: black">
													<p class="card-title-song text-start truncate-text" style="color: black"><%=brano.getAlbum().get(0).getTitolo()%></p>
												</a> 
												<small class="card-title-song text-start"><% if (brano.getDurata()%60 < 10) { %>
			                        				<%=((brano.getDurata()/60)%60) %>:0<%=(brano.getDurata()%60)%><br>
			                    					<% } else { %>
			                        				<%=((brano.getDurata()/60)%60) %>:<%=(brano.getDurata()%60)%><br>
			                   						<% } %>
			                   					</small>
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
                        <% } %>
                    </div>
                </div>
                <% 
                    isFirstSlide = false;
                } %>
            </div>

            <!-- controlli del carosello -->
            <button class="carousel-control-prev" type="button" data-bs-target="#branoCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#branoCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- fine carosello brani -->
    </div>
</div>
<%} else { %>
<p></p>
<%} %>
   <br>
   
<!-- album -->
  
   <% if(albums != null && !albums.isEmpty()){ %>
  <div class="container min-vh-10 d-flex justify-content-center">
    <div class="container" style="top: -15px;">
        <h2 style="text-align: center;">Album</h2>
        <div id="albumCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <% 
                   
                    int albumsPerSlide = 4; 
                    boolean isFirstSlide2 = true;

                    for (int i = 0; i < albums.size(); i += albumsPerSlide) {
                %>
                <div class="carousel-item <%= isFirstSlide2 ? "active" : "" %>">
                    <div class="row justify-content-center g-3">
                        <% 
                            for (int j = i; j < i + albumsPerSlide && j < albums.size(); j++) {
                                Album album = albums.get(j);
                        %>
                        
                        <div class="col-md-3 mb-4">
                         <div class="card" style="width: 275px; height: 350px;">
                            <a href="album?id=<%= album.getId() %>" class="text-decoration-none">
                               
                                    <img style="object-fit: cover;" src="<%= album.getFoto() %>" height="275" class="card-img-top" alt="Album Image">
                                    <div class="card-body">
                                        <h5 class="card-title text-center"><%= album.getTitolo() %></h5>
                                    </div>
                                     </a>
                                </div>
                        </div>

                        <% } %>
                    </div>
                </div>
                <% 
                    isFirstSlide2 = false;
                } %>
            </div>

            <!-- Controlli del carosello -->
            <button class="carousel-control-prev" type="button" data-bs-target="#albumCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#albumCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    <%} else { %>
<p></p>
<%} %>
<% } %>
</div>
</div>


    <%@ include file="footer.jsp" %>
    
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <!-- Script locali -->
    <script src="bs5.js"></script>


</body>
</html>