<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Welcome to Musicator!</title>
		 <!-- Bootstrap css -->
		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style.css">
	
	
	</head>
	<body>	
		<%@ include file="nav.jsp" %>

		<div class="pt-3"></div>
	        <!-- GLOBAL TOP 200 -->
	        <div class="py-5"></div>
	        <div class="container text-center mb-4"  data-aos="fade-up">
	            <p class="text-secondary fw-bold fs-5 mb-0">GLOBAL TOP 200</p>
	            <h2 class="h1 fw-bold">Top songs being discovered around the world right now</h2>
	            <p class="fs-5 pb-4">See who made it on the list of the most Musicated songs worldwide</p>
	            <div class="ratio ratio-16x9" data-aos="zoom-in">
	               <iframe width="560" height="315" src="https://www.youtube.com/embed/kPa7bsKwL-c?si=TtF7_lC2Bq1kVN9e" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
	           </div>
	       </div>




		    <!-- Footer -->
		    <footer class="footer bg-light text-center py-3">
		        <div class="container">
		            <p class="text-muted">© 2024 Musicator. Tutti i diritti riservati.</p>
		        </div>
		    </footer>
		<!-- Bootstrap Js -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>