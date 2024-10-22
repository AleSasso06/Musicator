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
				
		<!-- Font -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

		
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
	    
	    <style>
	    	
	    	.button-spacing{
	    		padding: 10px 20 px;
	    		background-color:#C2185B;
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
	   			 white-space: nowrap;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    max-width: 175px;
	
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
			
			/* Ensures the modal is on top */
			.modal {
			  z-index: 1050 !important; 
			}
			
			/* Ensures the backdrop is right behind the modal */
			.modal-backdrop {
			  z-index: 1040 !important; 
			}
	
	    </style>
	</head>

	<body>
	
		<%@ include file="nav.jsp" %>
	    <!-- ELEMENTI FIXED -->
	    <%@ include file="goTop.jsp" %>
	
		<% List<Brano> brani = (List<Brano>) request.getAttribute("brani"); %>
	
		<div class="container min-vh-10 d-flex  justify-content-center mt-5">
			
			<!-- Barra di Ricerca -->
			<div class="input-group mb-3">
				<form action="ricerche_specifiche" method="get" class="input-group mb-3">
					<input type="text" class="form-control" name="brani" style="border-radius:30px" placeholder="Cerca il tuo brano preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
					<!--  <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>-->
				</form>
			</div>
			<!-- Fine Barra di Ricerca -->	
		</div>
				
		<!-- pulsante per tornare indietro -->
	    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
				
		<div class="container">
		
	    	<!-- carosello -->
	   		<div id="caroselloBrani" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000" style="position:relative; z-index: 0;">
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
								<div class="card song-card" style="overflow: visible !important; position: relative">
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
											<div class="card-body p-1">
												<a class="card-title" href="brano?id=<%=brano.getId()%>">
													<p class="card-title text-start">
														<b><%=brano.getTitolo()%></b>
													</p>
												</a> 
												<a href="album?id=<%=brano.getAlbum().get(0).getId()%>"
													style="color: black">
													<p class="card-title text-start"><%=brano.getAlbum().get(0).getTitolo()%></p>
												</a> 
												<small class="card-title text-start"><% if (brano.getDurata()%60 < 10) { %>
			                        				<%=((brano.getDurata()/60)%60) %>:0<%=(brano.getDurata()%60)%><br>
			                    					<% } else { %>
			                        				<%=((brano.getDurata()/60)%60) %>:<%=(brano.getDurata()%60)%><br>
			                   						<% } %>
			                   					</small>
											</div>
										</div>
										<!-- inizio aggiunta brano a playlist -->
										<!-- inizio con modal -->
										<!--<button type="button" data-bs-toggle="modal" data-bs-target="aggiungi-brano">
											<i class="bi bi-plus-circle"></i>
										</button>
										<div class="modal" tabindex="-1" id="aggiungi-brano">
										  <div class="modal-dialog">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h5 class="modal-title">Modal title</h5>
										        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										      </div>
										      <div class="modal-body">
										        <p>Modal body text goes here.</p>
										      </div>
										      <div class="modal-footer">
										        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
										        <button type="button" class="btn btn-primary">Save changes</button>
										      </div>
										    </div>
										  </div>
										</div> -->
										<!-- fine con modal -->
										<!-- inizio con dropdown -->
										<%if (session.getAttribute("utente") != null) { %>
										<div class="dropdown col-auto">
										  <button style="position: relative; overflow: visible !important" class="btn btn-light-outline" type="button" data-bs-toggle="dropdown" aria-expanded="false">
										    <i class="bi bi-plus-circle"></i>
										  </button>
										  <ul class="dropdown-menu dropdown-menu-dark" style="position: relative; z-index:1050 !important">
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
										  	<button class="btn btn-light-outline" type="button" data-bs-toggle="modal" data-bs-target="#aggiungi-brano">
												<i class="bi bi-plus-circle"></i>
											</button>
										 </div>
										 <%} %>
										<!-- fine con dropdown -->
										<!-- fine aggiunta brano a playlist -->
										<div class="col-auto">
											<a class="btn btn-play" href="<%=brano.getYtLink()%>"
												target="blank"> <i class="bi bi-play-circle-fill"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
			                <% } %> <!-- Fine ciclo per braniPerSlide -->
			            </div>
			        </div>
			        <% isFirstSlide = false; 
			        } %> 
			        <!-- Fine ciclo per le slide -->
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
						<a href="login.jsp"><button type="button" class="btn custom-register-btn">Login</button></a>
					</div>
				</div>
			</div>
		</div>
		<!-- fine modal utente non loggato -->
	
		<footer>
			<%@ include file="footer.jsp" %>
		</footer>
		<!-- Bootstrap JavaScript Libraries -->
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
	    <!-- Script locali -->
	    <script src="bs5.js"></script>
	
	
	</body>
</html>