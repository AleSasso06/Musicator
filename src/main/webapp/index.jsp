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
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	
	</head>
	<body>	
		<%@ include file="nav.jsp" %>

		<div class="pt-3"></div>
	     <!-- GLOBAL TOP 200 -->
	        <div class="py-5"></div>
	        <div class="container text-center mb-4"  data-aos="fade-up">
	            <p class=" global text-secondary fw-bold fs-5 mb-0">GLOBAL TOP 200</p>
	            <h2 class="h1 fw-bold">Top songs being discovered around the world right now</h2>
	            <p class="fs-5 pb-4">See who made it on the list of the most Musicated songs worldwide</p>
	            <div class="ratio ratio-16x9" data-aos="zoom-in">
<<<<<<< HEAD
	               <iframe width="560" height="315" src="https://www.youtube.com/embed/kPa7bsKwL-c?si=TtF7_lC2Bq1kVN9e" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
=======
	                <iframe width="560" height="315" src="https://www.youtube.com/embed/kPa7bsKwL-c?si=oj_yLUZIIH94tjEE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
>>>>>>> refs/heads/index
	           </div>
	       </div>
     <!-- Sezione Classifica Globale -->
			<section class="global-top-200">
			    <div class="container">
			        <div class="row justify-content-between align-items-center mb-4  pb-2 mb-3 border-bottom d-flex justify-content-between align-items-baseline">
			            <div class="col">
			               <h2 class="h3 fw-bold mb-0">Global Top 200 Chart</h2>
			                 <p class="mb-0"><a href="#" class="link-underline  link-underline-opacity-0 fw-bolder">SEE ALL</a></p> 
			             </div>
			        </div>

        <!-- Griglia delle card -->
        <div class="row">
            <div class="col-md-6 mb-3">
                <div class="card song-card">
                    <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                            <img src="images/img_album/lady gaga B.webp" class="img-fluid rounded-start song-img" alt="...">
                        </div>
                        <div class="col">
                            <div class="card-body">
                                <h5 class="card-title">Die With A Smile</h5>
                                <p class="card-text">Lady Gaga & Bruno Mars</p>
                            </div>
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-play">
                                <i class="bi bi-play-circle-fill"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Ripeti per altre card -->
            <div class="col-md-6 mb-3">
                <div class="card song-card">
                    <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                            <img src="path-to-image2.jpg" class="img-fluid rounded-start song-img" alt="...">
                        </div>
                        <div class="col">
                            <div class="card-body">
                                <h5 class="card-title">Good Luck, Babe!</h5>
                                <p class="card-text">Chappell Roan</p>
                            </div>
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-play">
                                <i class="bi bi-play-circle-fill"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Aggiungi altre card simili per ogni canzone -->
        </div>

        <!-- Slider per navigare tra le pagine della classifica -->
        <div class="row mt-4">
            <div class="col d-flex justify-content-end">
                <button class="btn btn-slider-prev">
                    <i class="bi bi-arrow-left-circle"></i>
                </button>
                <button class="btn btn-slider-next ms-2">
                    <i class="bi bi-arrow-right-circle"></i>
                </button>
            </div>
        </div>
    </div>
</section>



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