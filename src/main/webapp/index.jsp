<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="it.generationitaly.musicator.entity.Brano"%>
<%@page import="it.generationitaly.musicator.entity.Album"%>    
 
<!DOCTYPE html>
<html>
	<head>      
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Welcome to Musicator!</title>
		 <!-- Bootstrap css -->
 		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

		
		    <style>
	        /************************************************ PRELOADER */
	        #preloader {
	            position: fixed;
	            z-index: 1031;
	            top: 0;
	            display: flex;
	            flex-direction: column;
	            justify-content: center;
	            align-items: center;
	            width: 100vw;
	            height: 100vh;
	            background-color: #c1ff72;
	            color: #fff;
	            transition: 1s ease-out 1s
	        }
	
	        #preloader.loaded {
	            top: 100vh
	        }
	
	        #preloader .loader {
	            position: relative;
	            animation-name: moveTop;
	            animation-duration: 2.4s;
	            animation-iteration-count: infinite
	        }
	        
	    </style>
	   

	
	</head>
	<body>	
	<%@ include file="nav.jsp" %>

	
    <!-- ELEMENTI FIXED -->
    <%@ include file="goTop.jsp" %>
            
        <div class="pt-3"></div>

        <div class="svg-container mt-3 pt-3">
           <img alt="logo" src="images/logo header.svg">
        </div>
        
       
        <!-- GLOBAL TOP 200 -->
        <div class="py-4"></div>
        <div class="container text-center mb-4"  data-aos="fade-up">
            <p class="text-secondary fw-bold fs-5 mb-0">GLOBAL TOP 200</p>
            <h2 class="h1 fw-bold">Top songs being discovered around the world right now</h2>
            <p class="fs-5 pb-4">Scopri chi è entrato nella lista delle canzoni più ascoltate al mondo su Musicator</p>
            <div class="ratio ratio-16x9" data-aos="zoom-in">
	                <iframe width="560" height="315" src="https://www.youtube.com/embed/kPa7bsKwL-c?si=oj_yLUZIIH94tjEE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
        <!-- TOP 200 ALBUMS -->
        <div class="container pt-4 pb-2 mb-3 border-bottom d-flex justify-content-between align-items-baseline" data-aos="fade-left"> 
            <h2 class="h3 fw-bold mb-0">Classifica dei 12 brani più ascoltati del momento</h2>
            <p class="mb-0"><a href="brani" class="link-underline  link-underline-opacity-0 fw-bolder">VAI ALLA LISTA BRANI</a></p>
        </div>
        
        <% List<Brano> brani = (List<Brano>) request.getAttribute("brani"); %>
        <%for(Brano brano : brani) {%>
        
	   <!-- carosello -->
	   <div id="caroselloBrani" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
	    <div class="carousel-inner">
	        <% 
	        int braniPerSlide = 12; // Numero di card per slide
	        int numeroDiBrani = brani.size();
	        boolean isFirstSlide = true;
	
	        for (int i = 0; i < numeroDiBrani; i += braniPerSlide) {
	        %>
	        <div class="carousel-item <%= isFirstSlide ? "active" : "" %>">
	           <div class="row justify-content-center d-flex align-items-stretch">
	                
	        <% for (int j = i; j < i + braniPerSlide && j < numeroDiBrani; j++) {%>
	        
        <div class="container mb-5" data-aos="fade-up">
            <div class="row home-covers">
                <!-- ALBUM -->
                
                 <% if (!brano.getAlbum().isEmpty()) { %>
                
                <a href="brani"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">1</p>
                    
                    <img src="<%= brano.getAlbum().get(0).getFoto() %>" alt="" width="75" height="75" class="rounded-3 mx-3" style="object-fit: cover">
                    <div>
                    	<a class="card-title" href="brano?id=<%= brano.getId() %>"><p class="mb-0"><strong><%= brano.getTitolo() %></strong></p></a>
                    	
                    </div>
                </a>
                <% } %>
                <% } %>
                <% } %> <!-- Fine ciclo per braniPerSlide -->
            </div>
        </div>
        <% 
            isFirstSlide = false; 
        } %> <!-- Fine ciclo per le slide -->
    </div>
                
                
<!--                 ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">2</p>
                    <img src="images/img_album/beautiful.webp" alt="" width="75"
                        height="75" class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Beautiful things</strong></p>
                        <p class="mb-0">Benson Boone</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">3</p>
                    <img src="images/img_album/billie.webp" alt="" width="75"
                        height="75" class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Birds of feather</strong></p>
                        <p class="mb-0">Billie Eilish</p>
                    </div>
                </a>

                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">4</p>
                    <img src="images/img_album/disturbed.webp" alt="" width="75"
                        height="75" class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>The sound of silence</strong></p>
                        <p class="mb-0">Disturbed</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">5</p>
                    <img src="images/img_album/pray.webp" alt="" width="75"
                        height="75" class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>WE PRAY</strong></p>
                        <p class="mb-0">Coldplay, Little Simz, Burna Boy, Elyanna &amp; TINI</p>
                    </div>
                </a>
                ALBUM
                <a href="#" href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3 d-block link-dark link-underline link-underline-opacity-0 ">
                    <p class="mb-0 fw-bold">6</p>
                    <img src="images/img_album/100.webp" alt="" width="75" height="75"
                        class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>100 MESSAGGI</strong></p>
                        <p class="mb-0">Lazza</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">7</p>
                    <img src="images/img_album/hozier.webp" alt="" width="75" height="75"
                        class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Too sweet</strong></p>
                        <p class="mb-0">Hozier</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">8</p>
                    <img src="images/img_album/prequel.webp" alt="" width="75" height="75"
                        class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Prequel</strong></p>
                        <p class="mb-0">Falling In Reverse</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">9</p>
                    <img src="images/img_album/creep.webp" alt="" width="75" height="75"
                        class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Creep</strong></p>
                        <p class="mb-0">Radiohead</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">10</p>
                    <img src="images/img_album/eminem.webp" alt="" width="75"
                        height="75" class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Mockingbird</strong></p>
                        <p class="mb-0">Eminem</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">11</p>
                    <img src="images/img_album/timeless.webp" alt="" width="75" height="75"
                        class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Timeless</strong></p>
                        <p class="mb-0">The Weeknd &amp; Playboi Carti</p>
                    </div>
                </a>
                ALBUM
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">12</p>
                    <img src="images/img_album/romero.webp" alt="" width="75"
                        height="75" class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Pedro</strong></p>
                        <p class="mb-0">Jacksony, Agatino Romero</p>
                    </div>
                </a>
 -->
            </div>
        </div>
            
                <!-- paginazione (puntini) -->
                <div class="swiper-pagination"></div>
        
        <!-- DISCOVER ITALY -->
        <section class="bg-body-dark py-4">
            <div class="container text-center">
                <img class="rounded-circle border border-white border-5 shadow"
                    src="images/images/logoV.svg" alt=""
                    style="width:120px; height:auto; position:relative; z-index:2; margin-right: -5rem"
                    data-aos="fade-right">
                <img class="rounded-circle border border-white border-5 bg-light shadow"
                    src="images/teamL.svg" alt=""
                    style="width:120px; height:auto; position:relative; z-index:2" data-aos="fade-up">
                <img class="rounded-circle border border-white border-5 shadow"
                    src="Musicator/src/main/webapp/images/ML.svg" alt=""
                    style="width:120px; height:auto; position:relative; z-index:2; margin-left: -5rem"
                    data-aos="fade-left">
            </div>
            
            <div class="container text-center mt-4" data-aos="fade-up">
                <p class=" fw-bold">DISCOVERY ITALY</p>
                <h2 class="h1">Brani in ascesa di artisti emergenti</h2>
                <p class="lead">Sii il primo ad ascoltare questi futuri successi musicali</p>
            </div>
            <div class="container pb-2 mb-3 border-bottom d-flex justify-content-between align-items-baseline" data-aos="fade-left">
            </div>
                    
                    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
	     <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
	 	 </div>
        <!-- Primo elemento attivo con video YouTube -->
        <div class="carousel-item active">
            <div class="container d-flex justify-content-center">
                <div class="ratio ratio-16x9" style="max-width: 480px;">
                    <iframe width="560" height="315" class="center" src="https://www.youtube.com/embed/cZTlRmNgJz4?si=LkVhANEcwZlH7Ip0" 
                            title="YouTube video player" frameborder="0" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                            referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        <!-- Secondo elemento con immagine -->
        <div class="carousel-item">
        	 <div class="container d-flex justify-content-center">
                <div class="ratio ratio-16x9" style="max-width: 480px;">
            		<iframe width="560" height="315" src="https://www.youtube.com/embed/Dpfv9P23uCM?si=7t8Ii8t_K_wP99Kj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
               </div>
            </div>
        </div>
        <!-- Terzo elemento con immagine -->
        <div class="carousel-item">
        	 <div class="container d-flex justify-content-center">
                <div class="ratio ratio-16x9" style="max-width: 480px;">
            		<iframe width="560" height="315" src="https://www.youtube.com/embed/xAWDqdpOlu8?si=lYmmDmxF5RDjj8M1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
               </div>
            </div>
        </div>
    </div>
	 <!-- controlli -->
	    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
	        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	        <span class="visually-hidden">Previous</span>
	    </button>
	    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
	        <span class="carousel-control-next-icon" aria-hidden="true"></span>
	        <span class="visually-hidden">Next</span>
	    </button>
	</div>

                    <!-- paginazione (puntini) -->
                    <div class="swiper-pagination"></div>
        </section>
  

<%@ include file="footer.jsp" %>    
    
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <!-- Swiper JS library -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- headroom JS library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/headroom/0.12.0/headroom.min.js" integrity="sha512-9UsrKTYzS9smDm2E58MLs0ACtOki+UC4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- AOS JS library-->
    <!-- <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/3.0.0-beta.6/aos.js" integrity="sha512-tnNM6PPNOVfZ5sGPw6hThCrcUBeqt2mVEk3EAj8tCtuMHqbuVm5/HsZagrr8W2aaFE+6rKIByGwQbEnmodrYVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Script locali -->
    <script src="bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>