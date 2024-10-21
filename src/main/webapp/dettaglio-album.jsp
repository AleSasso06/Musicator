<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.*"%>
<%@ page import ="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musicator - Album</title>
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
	        /* Imposta una larghezza fissa per tutte le card */
	        body {
	        	overflow-x: hidden;
	        }
	        .song-card {
	            width: 550px; /* Definisci una larghezza fissa per garantire uniformità */
	            opacity: 0.7;
	            transition: opacity 0.5s ease;
	        }
	
	        .card-body {
	        	white-space: nowrap; /* Impedisce la rottura della riga */
	            text-align: center; /* Allinea il testo al centro */
	            width: 200px;
	        }
	
	        .btn-play {
	            font-size: 1.1rem;
	            color: #C2185B;
	        }
	        
			.album-description {
			    margin-top: -240px; 
			    position: relative; 
			    z-index: 10; 
			}
			.card-body p {
		        line-height: 1.2; /* Riduce lo spazio tra le righe */
		        margin: 0; /* Rimuove margini extra */
   		 	}
	    </style>
</head>
<body>
<%@ include file="nav.jsp" %>
    <!-- ELEMENTI FIXED -->
    <%@ include file="goTop.jsp" %>



<%Album album = (Album) request.getAttribute("album"); %>
<% List <Brano> brani = album.getBrano(); %>
<div class="pt-3"></div>
		
		<!-- Inizio Logo -->
	        <div class="svg-container mt-3">
	           <img alt="" src="images/header Brano.svg" style="opacity: 0.7; transition: opacity 0.3s ease;">
	        </div>
        <!-- Fine Logo -->
 	<!-- pulsante per tornare indietro -->
    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
		
		    <!-- nome album -->
		   	<%-- <div class="row align-items-center">
		    <div class="col-md-4 text-md-start text-center">
		       <picture>
		         <img src="<%=album.getFoto() %>" class="img-thumbnail" alt="..."  style="widht:300px; height:300px; object-fit: cover; position:relative; right: -510px; top: -265px; z-index:10px">
		   	</picture>
		         <img src="<%=album.getFoto() %>" class="img-thumbnail" alt="..."  style="widht:300px; height:300px; object-fit: cover; position:relative; right: -620px; top: -265px; z-index:10px">
		   		</picture>
		    </div>
      </div> --%>
      <div class="container">
  		<div class="row align-items-center">
    
	    <!-- inizio foto -->
	    <div class="col-md-4">
		  <picture>
	        <img src="<%=album.getFoto() %>" class="img-thumbnail" alt="..." 
		       style="width: 300px; height: 300px; object-fit: cover; position: relative; right: -510px; top: -350px; z-index: 10;">
		  </picture>
	    </div>
	    <!-- fine foto -->
    
	    <!-- nome -->
	    <div class="text-md-start text-center">
	         <h1 class="display-3 text-light text-center" style="position: relative; top: -300px;"><b> <%= album.getTitolo() %></b></h1>
	    </div>
	    <!-- fine nome -->
    	</div>
		</div>
        <div class="container">
		        <%-- <div class="col">
			        <h1 class="display-3 text-light text-center" style="position:relative; right: 0px; top:-225px; z-index:10px"> <b><%= album.getTitolo() %></b></h1>
	       		</div>  --%>
	    
	    			  <!-- Descrizione dell'album fuori dalla card -->
	    			  <div class="album-description">
					    <div class="text-center" style="color: white;">
					        <h5><b>Descrizione:</b></h5>
					        <p style="color: white;"> 
					            <%= album.getDescrizione() %>
					        </p>
					    </div>
					</div>
	   
	    
		<div class="container mt-5">
		    <div class="row justify-content-center">
           		 <div class="col-md-8">
            <!-- Card -->
            <div class="card album-card mt-3 mb-4">
                <div class="row no-gutters align-items-center">
                    <div class="col-md-4 text-center">
                    	<a href="artista?id=<%=album.getArtista().getId()%>">
                        	<img src="<%= album.getArtista().getFoto() %>" alt="Artista image" class="rounded-circle artist-img" width="200" height="200"; style="object-fit: cover;">
                    	</a>
                    </div>
                    <!-- Dettagli dell'album (a destra) -->
                    <div class="col-md-8">
                        <div class="card-body text-start"> <!-- Allineamento a sinistra -->
                            <h3 class="card-text"><b><%= album.getTitolo() %></b></h3>
                            <p class="card-text" style="color: black;">
                            <a style="color: black" class="card-text" href="artista?id=<%= album.getArtista().getId() %>">
                              <b>Artista:</b> <%= album.getArtista().getPseudonimo() %><br>
                              </a>
                                <b>Genere:</b> <%= album.getGenere().getNome() %><br>
                                <% if (album.getDurata()%60 < 10) { %>
                                	<b>Durata:</b> <%=((album.getDurata()/60)%60) %>:0<%=(album.getDurata()%60)%><br>
                                <% } else { %>
                                	<b>Durata:</b> <%=((album.getDurata()/60)%60) %>:<%=(album.getDurata()%60)%><br>
                                <% } %>
                                <b>Data di Uscita:</b> <%= new java.text.SimpleDateFormat("dd/MM/yyyy").format(album.getDataUscita()) %><br>
                                <b> <%= album.getBrano().size() %> brani </b>
                            </p>
                        </div>
                    </div>
                </div>
            </div>


			        </div>
			    </div>
			</div>
          </div>

	
		
		<div class="container min-vh-10 d-flex justify-content-center mt-5 pt-2 py-3">
		    <h1 style="color:white"> Elenco brani</h1>
		</div>
		
		<!-- Griglia delle card -->
		<div class="row justify-content-center">
		    <% if (!brani.isEmpty()) { %>
		        <% for (Brano brano : brani) { %>
		            <div class="col-12 mb-3 d-flex justify-content-center">
		                <div class="card song-card">
		                    <div class="row no-gutters align-items-center">
		                        <div class="col-auto">
		                            <img src="<%= brano.getAlbum().get(0).getFoto() %>" height="110" class="rounded song-img" alt="...">
		                        </div>
		                        <div class="col">
		                            <div class="card-body p-2">
		                                <a class="card-title h5" href="brano?id=<%= brano.getId() %>">
		                                    <h5 class="card-title text-start"><%= brano.getTitolo() %></h5>
		                                </a>
		                                
		                                <h6 class="text-start text-body-secondary"><%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(brano.getDataUscita()) %></h6>
		                                <h6 class="text-start text-body-secondary"><%=((brano.getDurata()/60)%60) %>:<%= (brano.getDurata()%60)%></h6>
		                            </div>
		                        </div>
		                        <%if (session.getAttribute("utente") != null) { %>
										<!-- <div class="col-auto">
										  	modal: registrati per iniziare a creare le tue playlist
										  	<button style="position:relative; overflow: visible !important; display:flex;  " class="btn btn-light-outline" type="button" data-bs-toggle="modal" data-bs-target="#aggiungi-brano-log">
												<i class="bi bi-plus-circle"></i>
											</button>
										</div> -->
										<div class="dropdown dropstart col-auto" style="overflow: visible !important">
										  <button style="position: relative; overflow: visible !important" class="btn btn-light-outline" type="button" data-bs-toggle="dropdown" aria-expanded="false">
										    <i class="bi bi-plus-circle"></i>
										  </button>
										  
										  <ul class="dropdown-menu dropdown-menu-dark" style="position: absolute; z-index:9999 !important;">
										  	<% List<Playlist> playlists = utente.getPlaylist(); %>
										  	<%for (Playlist playlist : playlists) { %>
										  	<form action="add-to-playlist" method="post">
										  		<input type="hidden" name="playlistId" value="<%=playlist.getId()%>">
										  		<input type="hidden" name="branoId" value="<%=brano.getId()%>">
										  		
										    	<li><button  type="submit" class="dropdown-item"><%=playlist.getTitolo() %></button></li>
										    </form>
										    <%} %>
										    <li><hr class="dropdown-divider"></li>
										    <li><a class="dropdown-item" href="creazioneplaylist.jsp?branoId=<%=brano.getId()%>">Crea nuova playlist</a></li>
										  </ul>
										 </div>
										 <%} else { %>
										 <div class="col-auto">
										  	<!-- modal: registrati per iniziare a creare le tue playlist -->
										  	<button style="position:relative; overflow: visible !important; display:flex;  " class="btn btn-light-outline" type="button" data-bs-toggle="modal" data-bs-target="#aggiungi-brano">
												<i class="bi bi-plus-circle"></i>
											</button>
										 </div>
										 
										 <%} %>
		                        <div style="margin-left:-30px" class="col-2">
											<a style="white-space: nowrap" class="btn btn-play" href="<%=brano.getYtLink()%>"
												target="blank"> <i class="bi bi-play-circle-fill"></i>
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
				<!-- inizio modal utente non loggato -->
		<div class="modal" tabindex="-1" id="aggiungi-brano">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Necessario Account</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<p style="color: black">Per creare delle playlist e aggiungervi brani è necessario avere un account.</p>
					</div>
					<div class="modal-footer">
						<!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Chiudi</button> -->
						<a href="login.jsp"><button type="button" class="btn btn-danger fw-bold">Login</button></a>
					</div>
				</div>
			</div>
		</div>
		<!-- fine modal utente non loggato -->
		

<%@ include file="footer.jsp" %>

	<!-- Bootstrap JavaScript Libraries -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gybEptPbAmWZKOW09d2MRnb4FFPsEOvbZ5oV9pUvR74CJRdV4/" crossorigin="anonymous"></script>
	<!-- Swiper JS library -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<!-- headroom JS library -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/headroom/0.12.0/headroom.min.js" integrity="sha512-9UsrKTYzS9smDm2E58MLs0ACtOki+UC4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="assets/javascript/bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <!-- Script locali -->
    <script src="bs5.js"></script>

</body>
</html>
