<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	        @keyframes moveTop {
	            0% {
	                top: 100px;
	                opacity: 0
	            }
	
	            50% {
	                top: 0;
	                opacity: 1
	            }
	
	            100% {
	                top: -100px;
	                opacity: 0
	            }
	        }
	    </style>
	   

	
	</head>
	<body>	
	<header>
	<%@ include file="nav.jsp" %>
	</header>
    <!-- ELEMENTI FIXED 
    <div id="preloader"><span class="loader">... loading, please wait ...</span></div>-->
    <button class="btn btn-primary" id="go-top" onclick="goTop();"><i class="bi bi-chevron-up"></i></button>

    <main class="overflow-hidden">
        <div class="pt-3"></div>


        <div class="svg-container mt-3">
           <img alt="" src="images/logo header.svg">
                
            
        </div>
        
        <!-- GLOBAL TOP 200 -->
        <div class="py-5"></div>
        <div class="container text-center mb-4"  data-aos="fade-up">
            <p class="text-secondary fw-bold fs-5 mb-0">GLOBAL TOP 200</p>
            <h2 class="h1 fw-bold">Top songs being discovered around the world right now</h2>
            <p class="fs-5 pb-4">See who made it on the list of the most Musicated songs worldwide</p>
            <div class="ratio ratio-16x9" data-aos="zoom-in">
	                <iframe width="560" height="315" src="https://www.youtube.com/embed/kPa7bsKwL-c?si=oj_yLUZIIH94tjEE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
        <!-- TOP 200 ALBUMS -->
        <div class="container pb-2 mb-3 border-bottom d-flex justify-content-between align-items-baseline" data-aos="fade-left"> 
            <h2 class="h3 fw-bold mb-0">Global Top 200 Chart</h2>
            <p class="mb-0"><a href="#" class="link-underline  link-underline-opacity-0 fw-bolder">SEE ALL</a></p>
        </div>
        <div class="container mb-5" data-aos="fade-up">
            <div class="row home-covers">
                <!-- ALBUM -->
                <a href="#"
                    class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                    <p class="mb-0 fw-bold">1</p>
                    <img src="images/img_album/ladyGB.webp" alt="" width="75"
                        height="75" class="rounded-3 mx-3">
                    <div>
                        <p class="mb-0"><strong>Die With A Smile</strong></p>
                        <p class="mb-0">Lady Gaga &amp; Bruno Mars</p>
                    </div>
                </a>
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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

                <!-- ALBUM -->
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
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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
                <!-- ALBUM -->
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

            </div>
        </div>
 </div>
  </div>              
                <!-- paginazione (puntini) -->
                <div class="swiper-pagination"></div>
        
        <!-- DISCOVER ITALY -->
        <section class="bg-body-secondary py-5">
            <div class="container text-center">
                <img class="rounded-circle border border-white border-5 shadow"
                    src="assets/immagini/discovery-italy/left.jpg" alt=""
                    style="width:120px; height:auto; position:relative; z-index:1; margin-right: -3rem"
                    data-aos="fade-right">
                <img class="rounded-circle border border-white border-5 shadow"
                    src="assets/immagini/discovery-italy/center.jpg" alt=""
                    style="width:160px; height:auto; position:relative; z-index:2" data-aos="fade-up">
                <img class="rounded-circle border border-white border-5 shadow"
                    src="assets/immagini/discovery-italy/right.jpg" alt=""
                    style="width:120px; height:auto; position:relative; z-index:1; margin-left: -3rem"
                    data-aos="fade-left">
            </div>
            <div class="container text-center mt-4" data-aos="fade-up">
                <p class=" fw-bold">DISCOVERY ITALY</p>
                <h2 class="h1">Rising tracks from new<br /> and upcoming artists</h2>
                <p class="lead">Be the first to listen to these future hit songs</p>
            </div>
            <div class="container pb-2 mb-3 border-bottom d-flex justify-content-between align-items-baseline" data-aos="fade-left">
                <h2 class="h3 fw-bold mb-0">Discovery Italy Tracks</h2>
                <p class="mb-0"><a href="#" class="link-underline  link-underline-opacity-0 fw-bolder">SEE ALL</a></p>
            </div>
            <div class="container" data-aos="fade-up">
                <div class="swiper swiper-colonne" >
                    <div class="swiper-wrapper pb-4">
                        <!-- SLIDE 01 -->
                        <div class="swiper-slide home-covers">
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">1</p>
                                <img src="assets/immagini/covers/cover-gata-only_FloyyMenor-and-Cris-Me.webp" alt=""
                                    width="75" height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Gata only</strong></p>
                                    <p class="mb-0">Floyy Menor &amp; Cris Mj</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">2</p>
                                <img src="assets/immagini/covers/cover-beautiful-things_benson-boone.webp" alt=""
                                    width="75" height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Beautiful things</strong></p>
                                    <p class="mb-0">Benson Boone</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">3</p>
                                <img src="assets/immagini/covers/cover-million-dollars-babe_tommy-richman.webp" alt=""
                                    width="75" height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Million dollars babe</strong></p>
                                    <p class="mb-0">Tommy Richman</p>
                                </div>
                            </a>
                        </div>
                        <!-- SLIDE 02 -->
                        <div class="swiper-slide home-covers">
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">4</p>
                                <img src="assets/immagini/covers/cover-the-sound-of-silence_disturbed.webp" alt=""
                                    width="75" height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>The sound of silence</strong></p>
                                    <p class="mb-0">Disturbed</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">5</p>
                                <img src="assets/immagini/covers/cover-i-like-the-way-you-kiss-me_artemas.webp" alt=""
                                    width="75" height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>I like the way you kiss me</strong></p>
                                    <p class="mb-0">Artemas</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#" href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3 d-block link-dark link-underline link-underline-opacity-0 ">
                                <p class="mb-0 fw-bold">6</p>
                                <img src="assets/immagini/covers/cover-lose-control_teddy-swims.webp" alt="" width="75"
                                    height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Lose Control</strong></p>
                                    <p class="mb-0">Teddy Swims</p>
                                </div>
                            </a>
                        </div>
                        <!-- SLIDE 03 -->
                        <div class="swiper-slide home-covers">
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">7</p>
                                <img src="assets/immagini/covers/cover-too-sweet_hozier.webp" alt="" width="75"
                                    height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Too sweet</strong></p>
                                    <p class="mb-0">Hozier</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">8</p>
                                <img src="assets/immagini/covers/cover-fall-back_lithe.webp" alt="" width="75"
                                    height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Fall back</strong></p>
                                    <p class="mb-0">Lithe</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">9</p>
                                <img src="assets/immagini/covers/cover-a-bar-song_shaabozey.webp" alt="" width="75"
                                    height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>A bar song</strong></p>
                                    <p class="mb-0">Shaabozey</p>
                                </div>
                            </a>
                        </div>
                        <!-- SLIDE 04 -->
                        <div class="swiper-slide home-covers">
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">10</p>
                                <img src="assets/immagini/covers/cover-not-like-us_kendrick-lamar.webp" alt=""
                                    width="75" height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Not like us</strong></p>
                                    <p class="mb-0">Kendrik Lamar</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">11</p>
                                <img src="assets/immagini/covers/cover-stumblin-in_cyril.webp" alt="" width="75"
                                    height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Stumblin' In</strong></p>
                                    <p class="mb-0">CYRIL</p>
                                </div>
                            </a>
                            <!-- ALBUM -->
                            <a href="#"
                                class="col-13 col-md-6 col-xl-4 rounded-3 d-flex align-items-center border-bottom mb-4 py-3">
                                <p class="mb-0 fw-bold">12</p>
                                <img src="assets/immagini/covers/cover-pedro_jacksony-agatino-romero.webp" alt=""
                                    width="75" height="75" class="rounded-3 mx-3">
                                <div>
                                    <p class="mb-0"><strong>Pedro</strong></p>
                                    <p class="mb-0">Jacksony, Agatino Romero</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="swiper-button-next">
                        <button class="btn btn-sm btn-primary rounded-circle" type="button"><i
                                class="bi bi-chevron-right"></i></button>
                    </div>
                    <div class="swiper-button-prev">
                        <button class="btn btn-sm btn-primary rounded-circle" type="button"><i
                                class="bi bi-chevron-left"></i></button>
                    </div>
                </div>
            </div>

                    <!-- paginazione (puntini) -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </section>

    </main>


    <footer class="bg-dark text-light py-5">
        <div class="container text-center text-lg-start">
            <div class="row">
                <!-- footer logo e selettore lingua-->
                <div class="col-12 col-lg-6">
                    <p class="mb-4 pb-2"><img src="assets/immagini/shazam-logo-footer.svg" alt="logo"
                            id="footer-logo"></p>
                    <p class="mb-2">Select language</p>
                    <div class="dropdown mb-5">
                        <a class="btn btn-outline-light dropdown-toggle fs-6 rounded-0" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown link
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Italian</a></li>
                            <li><a class="dropdown-item" href="#">French</a></li>
                            <li><a class="dropdown-item" href="#">Netherlands</a></li>
                        </ul>
                    </div>
                </div>
                <!-- footer menu links sx -->
                <div class="col-6 col-md-4 offset-md-2 col-lg-3 offset-lg-0 text-start fs-5">
                    <p class="text-secondary mb-2">Company</p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">About
                            us</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Apps</a>
                    </p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Careers</a>
                    </p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Help
                            for Apple Devices</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Help
                            for Android Devices</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">ShazamKit
                            for Developers</a></p>
                </div>
                <!-- footer menu links dx -->
                <div class="col-6  col-md-4 offset-md-1 col-lg-3 offset-lg-0 text-start fs-5">
                    <p class="text-secondary mb-2">Legal</p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Terms</a>
                    </p>
                    <p class="mb-2"><a href="#" class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Privacy
                            policy</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Manage
                            your data</a></p>
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">My
                            library</a></p>
                </div>
                <!-- footer social + copyright -->
                <div class="col-12 mb-5 pb-5 mt-5 text-center">
                    <p class="text-secondary mb-2">Follow Us</p>
                    <div class="mb-3">
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-facebook fs-2"></i></a>
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-twitter-x fs-2"></i></a>
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-instagram fs-2"></i></a>
                        <a href="#" class="btn btn-lg btn-outline-light border-0"><i
                                class="bi bi-snapchat fs-2"></i></a>
                    </div>
                    <p id="footer-copy">&copy; Copyright 2024 Apple Inc. and its affiliates</p>
                </div>
            </div>
        </div>
    </footer>
    <!-- barra fissa promo 
    <div class="fixed-bottom py-2 px-4 bg-redpromo">
        <div href="#" class="link-light  link-underline link-underline-opacity-0">
            <div class="container-fluid d-flex justify-content-between align-items-center fw-bold">
                <div class="d-flex align-items-center"><i class="bi bi-music-note-beamed fs-4 bg-danger bg-gradient px-2 py-1 rounded-3 me-3 "></i>  Get up to two months free of Apple Music</div>
                <div class="bg-white rounded-3 text-danger py-2 px-4 text-redpromo">TRY NOW</div>
            </div>
        </div>
    </div>-->
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
    <script src="assets/javascript/bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>