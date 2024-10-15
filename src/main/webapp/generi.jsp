<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="it.generationitaly.musicator.entity.Genere"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Elenco Generi Musicali</title>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">

   <style>
        .button-spacing {
            margin-bottom: 30px;
        }
    </style>
</head>


</head>
<body>

	<%@ include file="nav.jsp"%>
	<div class="container min-vh-10 d-flex  justify-content-center mt-5">
		<input type="text" class="form-control" style="border-radius: 30px"
			placeholder="Cerca il tuo genere preferito"
			aria-label="Recipient's username" aria-describedby="button-addon2">
		<button class="btn btn-outline-secondary" type="button"
			id="button-addon2">Cerca</button>
	</div>

	<%
	// Recupero della lista dei generi musicali 
	List<Genere> generi = (List<Genere>) request.getAttribute("generi");
	%>

	<div class="container">
		<h1 class="text-center my-5">Elenco Generi Musicali</h1>
		<form action="generi" method="get">
			<div id="genereButtons" class="d-grid gap-2 col-6 mx-auto"></div>
		</form>
		</div>
	<div class="container ">
	<div class="row row-cols-1 row-cols-md-3 g-4">
		<%
		// Verifica se la lista di generi se non null
		if (generi != null && !generi.isEmpty()) {

			for (Genere genere : generi) {
		%>
<button type="button" class="btn btn-secondary btn-lg">
		<a href="genere"?id=<%=genere.getId()%> " class="btn btn-custom">
			<%=genere.getNome()%>
		</a>
		</button>
		<%
		}
		} else {
		%>
		<p class="text-center">Nessun genere musicale trovato.</p>
		<%
		}
		%>
	</div>
</div>

	<script type="text/javascript"
		src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
