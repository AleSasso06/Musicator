<!doctype html>
<html lang="en">

<head>
    <title>Apps</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <style>
        /************************************************ PRELOADER */
        #preloader{position:fixed;z-index:1031;top:0;display:flex;flex-direction:column;justify-content:center;align-items:center;width:100vw;height:100vh;background-color:#0b5dd7;color:#fff;transition:1s ease-out 1s}#preloader.loaded{top:100vh}#preloader .loader{position:relative;animation-name:moveTop;animation-duration:2.4s;animation-iteration-count:infinite}@keyframes moveTop{0%{top:100px;opacity:0}50%{top:0;opacity:1}100%{top:-100px;opacity:0}}
    </style> 
    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <!-- Bs Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- Swiper css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <!-- AOS css-->
    <!-- <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/3.0.0-beta.6/aos.css" integrity="sha512-hoGlO+71fSG6lgS60I4bKvsFVB+bAnrVFDYlwSXoyNLppDcoupwJB7KbWq/63iACKn3gcgK9jMXd+T+YDeVrGQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- css locali -->
    <link rel="stylesheet" href="assets/css/style2.css">
</head>

<body>
    <!-- ELEMENTI FIXED -->
    <div id="preloader"><span class="loader">... loading, please wait ...</span></div>
    <button class="btn btn-primary" id="go-top" onclick="goTop();"><i class="bi bi-chevron-up"></i></button>
    <!-- HEADER -->
    <header class="fixed-top" id="navigazione-principale">
        <nav class="navbar navbar-expand-lg" aria-label="Offcanvas navbar large">
            <div class="container-xl py-1 py-md-3">
                <a class="navbar-brand" href="index.html"><img src="assets/immagini/shazam-logo-header.svg"
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
    <section id="hero" class=" text-white d-flex align-items-center overflow-hidden">
        <div class="container" data-aos="zoom-in">
            <img src="assets/immagini/hero-app-phones.webp" alt="" class="img-fluid">
        </div>
    </section>
    <main class="overflow-hidden">
        <div class="pt-3"></div>
        <!-- IDENTIFY -->
        <section class="py-5">
            <div class="container text-center mt-4">
                <h2 class="h1" data-aos="fade-up">Identify, listen and discover<br class="d-none d-md-block"> songs with the Shazam app
                </h2>
                <p class="lead" data-aos="fade-down">Listen and add songs you discover to your Apple Music or Spotify playlists. <br class="d-none d-md-block">Sing along with time-synced lyrics. Watch your favorite music videos with <br class="d-none d-md-block">Apple Music or YouTube.</p>
                <div class="row text-start justify-content-lg-center mt-5" data-aos="flip-left">
                    <div class="col-10 offset-1 col-lg-8 d-flex flex-wrap flex-md-nowrap">
                        <div class="order-md-2">
                            <h4 class="fw-bold mb-2">Download the free App</h4>
                            <p>Scan the code with your smart phone camera to download the free app</p>
                            <p class="fw-bold mb-0">AVALAIBLE ON</p>
                            <a href="#" class="fw-bolder link-underline link-underline-opacity-0">iOS <i
                                    class="bi bi-arrow-up-right"></i></a> | <a href="#"
                                class="fw-bolder link-underline link-underline-opacity-0">Android <i
                                    class="bi bi-arrow-up-right"></i></a>
                        </div>
                        <div class="text-center text-md-start order-md-1 me-md-4 w-100-below-md">
                            <img src="assets/immagini/qr-apps.webp" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- MORE WAYS -->
        <section class="my-5 text-center d-none d-lg-block">
            <h2 class="h1 mb-5" data-aos="fade-up">More ways to identify and discover music</h2>
            <div class="container rounded-5 pt-5 text-white"
                style="background-image: linear-gradient(180deg, #00bbff, #066aff 50%);" data-aos="zoom-out">
                <h2 class="mt-3">Shazam browser add-on</h2>
                <p class="lead fw-normal mb-4">Identify songs in seconds from your web browser</p>
                <p class="mb-4"><a href="#" class="link-dark"><img src="assets/immagini/edge.webp" alt="" width="40"
                            class="me-3">Microsoft Edge Add-on</a></p>
                <p class="mb-4">Also available for <a href="#" class="link-light fw-bold">Google Chrome</a></p>
                <img src="assets/immagini/browser.webp" alt="" class="img-fluid w-75">
            </div>
        </section>
        <section class="my-5">
            <div class="container">
                <div class="row py-5 row-cols-1 row-cols-lg-3">
                    <div class="feature col mb-5 mb-lg-0" data-aos="zoom-out">
                        <div
                            class="feature-icon d-inline-flex align-items-center justify-content-center fs-2 mb-4 bg-primary rounded-3">
                            <i class="bi bi-apple text-white"></i>
                        </div>
                        <h3 class="h4 text-body-emphasis fw-bold mb-1">Shazam on iOS Control Center</h3>
                        <p>Identify songs directly from Control Center on your iPhone or on your iPad.</p>
                        <a href="#" class="link-underline link-underline-opacity-0 fw-bolder mb-5 d-block">Learn more <i class="bi bi-arrow-up-right"></i></a>
                        <p class="mx-5 px-4"><img src="assets/immagini/control-center.webp" alt="" class="img-fluid"></p>
                    </div>
                    <div class="feature col mb-5 mb-lg-0" data-aos="zoom-out">
                        <div
                            class="feature-icon d-inline-flex align-items-center justify-content-center fs-2 mb-4 bg-primary rounded-3">
                            <i class="bi bi-android2 text-white"></i>
                        </div>
                        <h3 class="h4 text-body-emphasis fw-bold mb-1">Pop Up Shazam on Android</h3>
                        <p>Bring Shazam to your favorite Android apps with Pop Up Shazam.</p>
                        <a href="#" class="link-underline link-underline-opacity-0 fw-bolder mb-5 d-block">Learn more <i class="bi bi-arrow-up-right"></i></a>
                        <p class="mx-5 px-4"><img src="assets/immagini/popup-android.webp" alt="" class="img-fluid"></p>
                    </div>
                    <div class="feature col mb-5 mb-lg-0" data-aos="zoom-out">
                        <div
                            class="feature-icon d-inline-flex align-items-center justify-content-center fs-2 mb-4 bg-primary rounded-3">
                            <i class="bi bi-bell-fill text-white"></i>
                        </div>
                        <h3 class="h4 text-body-emphasis fw-bold mb-1">Shazam on Android Notification</h3>
                        <p>Use Android Notification to identify music with a swipe and tap.</p>
                        <a href="#" class="link-underline link-underline-opacity-0 fw-bolder mb-5 d-block">Learn more <i class="bi bi-arrow-up-right"></i></a>
                        <p class="mx-5 px-4"><img src="assets/immagini/notification.webp" alt="" class="img-fluid"></p>
                    </div>
                </div>
            </div>
        </section>
        <!-- SHAZAM -->
        <section class="mb-5">
            <div class="container">
                <div class="row align-items-stretch">
                    <div class="col-12 col-lg-4  mb-5 mb-lg-0" data-aos="fade-left">
                        <div class="h-100 rounded-4 bg-snapchat d-flex justify-content-center align-items-center flex-column px-4 py-5 px-lg-5">
                            <div class="text-center mb-4">
                                <img src="assets/immagini/snapchat_logo.svg" alt="" width="100" class="shadow rounded-4">
                            </div>
                            <div class="w-100">
                                <h2 class="fw-bold">Shazam on Snapchat</h2>
                                <p class="lead fw-normal">Identify songs playing around you while on Snapchat</p>
                                <a href="#" class="link-dark link-underline link-underline-opacity-0 fw-bolder d-block">Learn more <i class="bi bi-arrow-up-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-8 text-white" data-aos="fade-right">
                        <div class="h-100 rounded-4 bg-black  px-4 py-5 px-lg-5">
                            <div class="row flex-column-reverse flex-lg-row">
                                <div class="col my-auto">
                                    <h2 class="fw-bold">Shazam from your wrist</h2>
                                    <p class="lead fw-normal mb-0">Shazam is available for both Apple Watch and Android Wear</p>
                                </div>
                                <div class="col mb-4 mb-lg-0">
                                    <img src="assets/immagini/watches.webp" class="img-fluid watches" alt="">
                                </div>
                            </div>
                        </div>                        
                    </div>
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
    <div class="fixed-bottom py-2 px-4 bg-redpromo">
        <a href="#" class="link-light  link-underline link-underline-opacity-0">
            <div class="container-fluid d-flex justify-content-between align-items-center fw-bold">
                <div class="d-flex align-items-center"><i
                        class="bi bi-music-note-beamed fs-4 bg-danger bg-gradient px-2 py-1 rounded-3 me-3 "></i> Get up to two months free of Apple Music</div>
                <div class="bg-white rounded-3 text-danger py-2 px-4 text-redpromo">TRY NOW</div>
            </div>
        </a>
    </div>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
    <!-- Swiper JS library -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- headroom JS library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/headroom/0.12.0/headroom.min.js"
        integrity="sha512-9UsrKTYzS9smDm2E58MLs0ACtOki+UC4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- AOS JS library-->
    <!-- <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/3.0.0-beta.6/aos.js" integrity="sha512-tnNM6PPNOVfZ5sGPw6hThCrcUBeqt2mVEk3EAj8tCtuMHqbuVm5/HsZagrr8W2aaFE+6rKIByGwQbEnmodrYVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Script locali -->
    <script src="assets/javascript/bs5.js"></script>

</body>

</html>