


<head>
    <title>Swiper 02</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <!-- Bs Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Swiper css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <!-- css locali -->
    <link rel="stylesheet" href="assets/css/style2.css">
</head>

<body>

    <header class="fixed-top">
        <nav class="navbar navbar-expand-lg bg-body-tertiary" aria-label="Offcanvas navbar large">
            <div class="container-xl py-1 py-md-3">
                <a class="navbar-brand pb-2" href="index.html"><img src="assets/immagini/bootstrap-logo-dark.svg"
                        alt="logo"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-light" tabindex="-1" id="offcanvasNavbar2"
                    aria-labelledby="offcanvasNavbar2Label">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title text-dark" id="offcanvasNavbar2Label">Menù</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-start flex-grow-1 pe-3 text-uppercase fw-bolder">
                            <li class="nav-item">
                                <a class="nav-link px-lg-3" aria-current="page" href="app.html">get the app</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active px-lg-3" href="concerts.html">concerts</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link px-lg-3" href="charts.html">charts</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link px-lg-3" href="#radio-spins.html">radio spins</a>
                            </li>
                        </ul>
                        <div class="mt-2 mt-lg-0">
                            <button class="btn btn-outline-dark border-0" type="submit"><i
                                    class="bi bi-zoom-in"></i></button>
                            <div class="d-lg-inline-block mt-3 mt-lg-0">
                                <a class="btn btn-outline-dark" href="#" role="button">Start a project</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <!-- HERO -->
    <!--
    <section id="hero" class=" text-white d-flex align-items-center">
        <div class="container">
            <div class="row align-items-center  flex-column-reverse flex-md-row">
                <div class="col-12 col-md-6"><img src="assets/immagini/hero-smartphone.webp" alt=""
                        class="img-fluid img-shadow px-5"></div>
                <div class="col-12 col-md-6 text-center text-md-start mb-5">
                    <h1 class="fw-bolder display-5">Name songs <br class="d-none d-lg-block">in seconds</h1>
                    <p class="fs-4 mb-4">Find music, concerts and more with Shazam</p>
                    <div class="rounded-4 p-3 d-flex" style="background-color: #ffffff2f;">
                        <img src="assets/immagini/qrcode.webp" alt="" class="rounded-3 me-4" width="95" height="95">
                        <div>
                            <p>Get the app</p>
                            <p class="opacity-75 mb-0">Scan the code with your smart phone camera to download the free
                                app</p>
                        </div>
                    </div>
                    <p class="mb-0 mt-3">Available on iOS, Android, and more devices</p>
                </div>
            </div>
        </div>
    </section>
    -->
    <main>
        <style>
    /******************************************* FEATURED SLIDER */
    .Swiper.featured-slider {
      width: 100%;
    }

    .featured-slider .swiper-slide {
      font-weight:700;
    }
    .featured-slider .swiper-slide .verticale{
        aspect-ratio: 0.7;
        margin-bottom:.75rem;
    }
    .featured-slider .swiper-slide img {
        display: block;
        width: 100%;
        height: auto;
        border-radius: 10px;
        object-fit: cover;
        height: 100%;
    }
    .featured-slider .swiper-pagination{
        position: static;
    }
        </style>
        <div class="container py-5 my-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores iure, cumque voluptate eligendi sed odit aspernatur delectus quaerat dignissimos quam, omnis commodi nulla sunt? Aliquam architecto magnam molestiae doloribus quia.</div>
        <!-- Swiper FEATURED-SWIPER -->
        <div class="container">
            <div class="swiper featured-slider mb-5">
                <!-- Slides -->
                <div class="swiper-wrapper">
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-01-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 01</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-02-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 02</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-03-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 03</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-04-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 04</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-05-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 05</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-06-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 06</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-07-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 07</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-08-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 08</p>
                    </div>
                    <!-- Slide -->
                    <div class="swiper-slide">
                        <div class="verticale">
                            <img src="assets/immagini/featured-top-artist/featured-top-artist-09-300x300ac.webp" alt="">
                        </div>
                        <p>Slide 09</p>
                    </div>
                </div>
                <!-- paginazione (puntini) -->
                <div class="swiper-pagination"></div>
                <!-- frecce prev e next -->
                <!-- 
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                -->
            </div>
        </div>
    </main>
    <footer class="bg-dark text-light py-5">
        <div class="container text-center text-lg-start">
            <div class="row">
                <!-- footer logo e selettore lingua-->
                <div class="col-12 col-lg-6">
                    <p class="mb-4 pb-2"><img src="assets/immagini/bootstrap-logo-light.svg" alt="logo"
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
                    <p class="mb-2"><a href="#"
                            class="link-light  link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Privacy
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
    <!-- barra fissa promo -->
    <!--
    <div class="fixed-bottom py-2 px-4 bg-redpromo">
        <a href="#" class="link-light  link-underline link-underline-opacity-0">
            <div class="container-fluid d-flex justify-content-between align-items-center fw-bold">
                <div class="d-flex align-items-center"><i
                        class="bi bi-music-note-beamed fs-4 bg-danger bg-gradient px-2 py-1 rounded-3 me-3 "></i> Enjoy
                    Ilas Creativity School</div>
                <div class="bg-white rounded-3 text-danger py-2 px-4 text-redpromo">TRY NOW</div>
            </div>
        </a>
    </div>
    -->
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <!-- Swiper JS library -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
    <script>
        var featured_slider = new Swiper(".featured-slider", {
            //numero di slides visualizzate
            slidesPerView: 2,
            //spazio tra le slides (in pixel)
            spaceBetween: 30,
            //paginazione
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            //autoplay
            autoplay: {
                //tempo per ciascuna slide (ms)
                delay: 2500,
                //disabilita con l'interazione
                disableOnInteraction: true,
            },
            //frecce next e prev
            /*
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            */
            breakpoints: {
                768: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                },
                992: {
                    slidesPerView: 4,
                    spaceBetween: 40,
                },
                1200: {
                    slidesPerView: 6,
                    spaceBetween: 50,
                },
            }
            
        });
    </script>
</body>

</html>