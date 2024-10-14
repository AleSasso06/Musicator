<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="it.generationitaly.musicator.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Playlist> playlists = (List<Playlist>) request.getAttribute("playlists");
	%>
	<%@ include file="nav.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col">
			<form class="d-flex" role="search">
		   		<input class="form-control me-2" type="search" placeholder="Cerca in tutto il sito..." aria-label="Search">
		   		<button class="btn btn-outline-danger" type="submit">Cerca</button>
		    </form>
		    </div>
	    </div>
	    <%for (Playlist playlist : playlists) {
	    	%>
	    <div class="row">
	    	<div class="col">
	    		<img src="<%=playlist.getFoto()%>">
	    	</div>
	    	<div class="col">
	    		<span><%=playlist.getTitolo()%></span>
	    	</div>
	    </div>
	    <%} %>
	</div>
</body>
</html>