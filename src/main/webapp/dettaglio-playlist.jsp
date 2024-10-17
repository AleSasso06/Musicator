<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="it.generationitaly.musicator.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musicator - Playlist</title>
</head>
<body>
	<% Playlist playlist = (Playlist)request.getAttribute("playlist"); %>
	<div class="container">
	<div class="row">
		<img src="logo header.svg"> <!-- sarebbe il logo Musicator con tutte le barre del suono -->
		<div class="col-4">
			<img src="<%=playlist.getFoto()%>"> <!-- non ho idea di come si sovrapponga -->
		</div>
		<div class="col-8">
			<!-- ci andrebbe il titolo del brano -->
		</div>
	</div>
	<div class="row">	
		<div class="col-1"></div>
	</div>	
	</div>
</body>
</html>