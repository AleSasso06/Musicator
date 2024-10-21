<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.*" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title> Musicator - Modifica Playlist</title>
 
	<!-- Bootstrap css -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
		crossorigin="anonymous" />
	<!-- Bs Icons -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<!-- css locali -->
	<link rel="stylesheet" href="style2.css">
	
	<style>
	
		/* Imposta una larghezza fissa per tutte le card */
	    .song-card {
	    	width: 550px; /* Definisci una larghezza fissa per garantire uniformità */
	    	opacity: 0.7;
	    	transition: opacity 0.5s ease;
	    }
	    
	    /* Imposta una larghezza fissa per tutti gli input */
	    .update-input {
	    	width: 750px; /* Definisci una larghezza fissa per garantire uniformità */
	    	opacity: 0.7;
	    	transition: opacity 0.5s ease;
	    }
	
	</style>
	
   </head>
    
	<body>
		<header>
			<%@ include file="nav.jsp" %>
		</header>
		
		<!-- pulsante per tornare indietro -->
	    <a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
		<!-- fine pulsante per tornare indietro -->
		
		<div class="container mt-5" style="margin-bottom: 70px">
		    <h1 class="text-center" style="color:white">Modifica Playlist</h1>
		    
		    <!-- Recupero della playlist -->
		    <% Playlist playlist = (Playlist) request.getAttribute("playlist"); %>
		
		    <!-- Verifica se la playlist non è null -->
		    <% if (playlist != null) { %>
		
		        <form action="update-playlist" method="POST">
		            <!-- Campo nascosto per l'ID della playlist -->
		            <input type="hidden" name="id" value="<%= playlist.getId() %>">
		
		            <!-- Campo per il titolo della playlist -->
		            <div class="mb-3 update-input" style="margin-left: 250px">
		                <label for="titolo" class="form-label">Titolo</label>
		                <input type="text" class="form-control" id="titolo" name="titolo" value="<%= playlist.getTitolo() %>" required>
		            </div>
		
		            <!-- Campo per l'immagine della playlist -->
		            <div class="mb-3 update-input" style="margin-left: 250px">
		                <label for="foto" class="form-label">URL Immagine</label>
		                <input type="text" class="form-control" id="foto" name="foto" value="<%= playlist.getFoto() %>" required>
		            </div>
		            
		            <!-- inizio check privata -->
		            <!-- non ho idea di come si usi, come lo attivo? Che tipo di valori mi passa? -->
		            <div class="form-check update-input" style="margin-top: 40px; margin-left: 250px">
					  <input class="form-check-input" type="checkbox" value="" id="privata">
					  <label class="form-check-label" for="flexCheckDefault" style="color:white">
					    Privata
					  </label>
					</div>
					 <!-- Pulsante per salvare le modifiche -->
		            <button type="submit" class="btn btn-primary" style="margin-left: 575px">Salva Modifiche</button>
		        </form>
					<!-- fine check privata -->
					
					<!-- inizio brani -->
					<div class="row justify-content-center" style="margin-top: 50px; margin-bottom: 50px">
					    <% List<Brano> brani = playlist.getBrani(); %>
					    <% if (!brani.isEmpty()) { %>
					        <%int i = 0; 
					        for (Brano brano : brani) { %>
					        <form  action ="remove-brano-playlist" method="post">
					        <input type="hidden" name="playlistId" value="<%= playlist.getId() %>">
					        <input type="hidden" name="branoPlace" value="<%= i %>">
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
					                                 <small class="card-title text-start"><% if (brano.getDurata()%60 < 10) { %>
			                        				<%=((brano.getDurata()/60)%60) %>:0<%=(brano.getDurata()%60)%><br>
			                    					<% } else { %>
			                        				<%=((brano.getDurata()/60)%60) %>:<%=(brano.getDurata()%60)%><br>
			                   						<% } %>
			                   					</small>
			                   					</div>
					                        </div>
					                        <div class="col-auto">
					                        <button type="submit" class="bi bi-x-circle" > </button>
<%-- 					                            <a class="btn btn-play" href="remove-brano-playlist?branoPlace=<%= brano.getId() %>"> --%>
<!-- 					                                <i class="bi bi-x-circle"></i> -->
<!-- 					                            </a> -->
					                        </div>
					                    </div>
					                </div>
					            </div>
					            </form>
					        <%i++; }  %>
					    <% } else { %>
					        <p>Nessun brano trovato.</p>
					    <% } %>
					   
					</div>
					
					<!-- fine brani -->
		
		            <!-- Pulsante per salvare le modifiche 
		            <button type="submit" class="btn btn-primary" style="margin-left: 575px">Salva Modifiche</button>
		        </form>
		        -->
		    <% } else { %>
		        <!-- Messaggio di errore -->
		        <p class="text-danger">Errore: La playlist non è disponibile.</p>
		    <% } %>
		</div>
		
		<!-- Footer -->
		<footer>
		<%@ include file="footer.jsp"%>
		</footer>
		<!-- fine footer -->
		
		<!-- Script locali -->
		<script src="assets/javascript/bs5.js"></script>
		<script type="text/javascript"
			src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
	
	</body>
</html>
