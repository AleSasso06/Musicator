<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
<%@page import= "it.generationitaly.musicator.entity.Artista" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
	 <link rel="stylesheet" href="style.css">
	 	 <style>
	 .container {
            
            margin-top:50px;
            margin-bottom: 50px;
            max-width: 500px;           
            padding: 20px;              
            background-color: white;   
            border-radius: 10px;    
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

</style>
</head>
<body>
<%List<Artista> artisti = (List<Artista>) request.getAttribute("artisti"); %>
<%@ include file="nav.jsp" %>
 <!-- Barra di Ricerca -->
				    <form class="d-flex me-2" role="search">
				        <input class="form-control" type="search" placeholder="Cerca la tua musica..." aria-label="Cerca">
				        <button class="btn btn-outline-success" type="submit">Cerca</button>
				    </form>

<!-- inizio card -->
<%for(Artista artista : artisti) {%>
<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card">
      <img src="<%= artista.getFoto() %>" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><%=artista.getPseudonimo() %></h5>
      </div>
    </div>
  </div>
  <%} %>
  <!--  
  <div class="col">
    <div class="card">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  
  <div class="col">
    <div class="card">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  
  <div class="col">
    <div class="card">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
</div>
-->
<!-- fine card -->

<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>