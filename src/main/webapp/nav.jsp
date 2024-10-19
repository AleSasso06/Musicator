
	<%@ page import="it.generationitaly.musicator.entity.*" %>
	
<style>
	.navbar .nav-link {
	    color: #000000 !important;
	    font-weight: 500;
	    margin-right: 4px !important;
	    border-bottom: 2px solid transparent !important;
	    transition: color 0ms ease 0ms, border 500ms ease 0ms !important;
	    padding-top: 4px;
	    padding-bottom: 2px; /* Riduci questo valore per avvicinare la linea al testo */
	    display: inline-block;
	}
	
	.navbar .nav-link:hover {
	    color: #C2185B !important;
	    border-bottom: 2px solid #C2185B !important;
	}
	
	.navbar .nav-link:hover::after {
		width: 100%;
	}

</style>
	
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	    <div class="container-fluid justify-content-center">
	        <!-- Logo -->
	        <a class="navbar-brand justify-content-center" href="welcome">
	            <img src="images/logo.svg" width="200" height="50" alt="Logo">
	        </a>
	        
	        <!-- Bottone per la navbar su mobile -->
	        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	            <span class="navbar-toggler-icon"></span>
	        </button>
	        
	        <!-- Menu di navigazione -->
	        <div class="collapse navbar-collapse justify-content-center" id="navbarText">
	            <ul class="navbar-nav mb-2 mb-lg-0">
	                <li class="nav-item">
	                    <a class="nav-link" href="artisti" >Artisti</a>
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
	            
	            <!-- Barra di ricerca e pulsanti utente -->
	            <div class="d-flex align-items-center">
	                <form class="d-flex me-2" role="search" action="ricerca_globale" method="get">
	                    <div class="input-group">
	                        <input name="ricercaUtente" class="form-control" type="search" placeholder="Cerca la tua musica..." aria-label="Cerca">
	                        <button class="input-group-text bg-white border-0">
	                            <i class="fas fa-search"></i>
	                        </button>
	                    </div>
	                </form>
	
	                <!-- Sezione login/registrazione o logout -->
	                <%Utente utente = (Utente)session.getAttribute("utente"); %>
	                <%if (utente == null){%>
	                    <a href="./login.jsp" class="btn custom-login-btn me-2">Login</a>
	                    <a href="./sign-in.jsp" class="btn custom-register-btn">Registrati</a>
	                <% } else {%>
	                    <form action="logout" method="post">
	                        <button class="btn custom-login-btn me-2" type="submit">Logout</button>
	                    </form>
	                    <a href="profilo-utente">
	                        <picture>
	                            <img src="<%=utente.getFoto() %>" class="img-fluid img-thumbnail rounded-circle" alt="..." style="width: 45px; height: 45px; object-fit: cover;">
	                        </picture>
	                    </a>
	                <% } %>
	            </div>
	        </div>
	    </div>
	</nav>
