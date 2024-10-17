
	<%@ page import="it.generationitaly.musicator.entity.*" %>
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="index.jsp">
		    	<img src="images/logo.svg" width="200" height="50" alt="">
		     </a>
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
		    <div class="collapse navbar-collapse" id="navbarText">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        	<li class="nav-item">
		          		<a class="nav-link" href="artisti">Artisti</a>
		        	</li>
		        	<li class="nav-item">
		          		<a class="nav-link" href="albums">Album</a>
		        	</li>
		        	<li class="nav-item">
		          		<a class="nav-link" href="brani">Brani</a>
		        	</li>
		        	<li class="nav-item">
		          		<a class="nav-link" href="generi">Generi</a>
		        	</li>
		        	<li class="nav-item">
		          		<a class="nav-link" href="playlists">Playlist</a>
		        	</li>
		      </ul>
		      
				<div class="d-flex align-items-center">
				<!-- Barra di Ricerca -->
				<form class="d-flex me-2" role="search" action="ricerca_globale" method="get">
				    <div class="input-group">
				        <input name="ricercaUtente" class="form-control" type="search" placeholder="Cerca la tua musica..." aria-label="Cerca">
				        <button class="input-group-text bg-white border-0">
				            <i class="fas fa-search"></i> <!-- Icona di ricerca -->
				        </button>
				    </div>
				</form>
<!-- 				    Barra di Ricerca
					<form class="d-flex me-2" role="search" action="ricerca_globale" method="get">
					    <input name="ricercaUtente" class="form-control" type="search" placeholder="Cerca la tua musica..." aria-label="Cerca">
				        <button class="btn btn-outline-success" type="submit">Cerca</button>
				    </form>
 -->				
 
 					<!-- qui devo fare un if con la sessione dell'utente: se la sessione ha un utente faccio vedere la foto? lo username? e il bottone logout
 					se no si mostrano il login e registrati -->
 					
 					
 					<%Utente utente = (Utente)session.getAttribute("utente"); %>
 					<%if (utente == null){%>
 					
						<!-- Pulsante Login -->
						<a href="./login.jsp" class="btn custom-login-btn me-2 " id="reg">Login</a>
					   
						<!-- Pulsante Registrati -->
						<a href="./sign-in.jsp" class="btn custom-register-btn" id="log">Registrati</a>
						
					<% } else {%>
					
						<!-- Pulsante Logout href="logout"-->
						<form action="logout" method="post">
				   			<button class="btn custom-login-btn me-2 " id="out" type="submit">Logout</button>
						</form>
						
						<!-- inizio foto -->
						<div >
							<a href="profilo-utente">
								<picture>
								<img src="<%=utente.getFoto() %>" class="img-fluid img-thumbnail rounded-circle" alt="..." 
									style="width: 45px; height: 45px; object-fit: cover;">
								</picture>
							</a>
						</div>
						<!-- fine foto -->
					<% } %>
				
				</div>			 <!-- 
			 	<form class="d-flex" role="search">
			      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>		
			  -->    
			   </div>
		  </div>
	</nav>
