<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ page import="it.generationitaly.musicator.entity.Album"%>

<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
	 <link rel="stylesheet" href="style2.css">
</head>
<body>
<%@ include file="nav.jsp" %>
<%Album album = (Album) request.getAttribute("album"); %>
<% %>
<div class="pt-3"></div>


        <div class="svg-container mt-3">
           <img alt="" src="images/logo header.svg">
                
            
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
        <li>Artista:<%=album.getArtista().getNome() %></li>
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

<div class="container">
<ol >
       <li style="padding:20px; margin-bottom: 5px; background-color:white ;  border-radius: 4px;">Foto-Titolo canzone 
       </li>
    </ol>
    
</div>

<footer class="footer bg-light text-center py-3">
		        <div class="container">
		            <p class="text-muted">© 2024 Musicator. Tutti i diritti riservati.</p>
		        </div>
		    </footer>

	<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>