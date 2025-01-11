/*****************************************  HEADROOM */
// grab an element
var headroom_principale = document.getElementById("navigazione-principale");
// construct an instance of Headroom, passing the element
var headroom  = new Headroom(headroom_principale);
// initialise
headroom.init();

/* PRELOADER - il div #preloader, inizialmente sovrapposto alla pagina, scompare all'avvenuto caricamento del DOM */
document.addEventListener("DOMContentLoaded", function(){
    document.getElementById("preloader").classList.add("loaded");
    /*******************************************  AOS */
    //Attendi 1400ms prima di inizializzare AOS;
    setTimeout(() => { AOS.init({
        duration: 600,
        //esegui l'animazione 1 sola volta (se impostato su true)
        once: false,
        //esegui l'animazione al contrario quando l'utente scrolla verso l'alto (se impostato su true)
        mirror: true,

    }) }, 1400);
})
 

/*******************************************  PULSANTE #go-top **********************************/
// Mostra o nasconde il pulsante a seconda dello scrolling
window.onscroll = function () {
    if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
        document.getElementById("go-top").classList.add("attivo");
    } else {
        document.getElementById("go-top").classList.remove("attivo");
    }
};

// Funzione per scrollare verso l'alto
function goTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
}






var swiper = new Swiper('.swiper-container', {
    slidesPerView: 3, // Numero di slide visibili per volta
    spaceBetween: 30, // Spazio tra le slide
    loop: true, // Loop infinito
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});






/*****************************************  FEATURED TOP ARTISTS */
var featured_slider = new Swiper("#featured-top-artists", {
    //Una volta terminate le slides, torna sulla prima
    loop: true,
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

/*****************************************  FEATURED DISOVERY ARTISTS */
var featured_slider = new Swiper("#featured-discovery-artists", {
    //Una volta terminate le slides, torna sulla prima
    loop: true,
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


/************************************************************ SWIPER COLONNE */
var swiper = new Swiper(".swiper-colonne", {
    //Una volta terminate le slides, torna sulla prima
    loop: true,
    slidesPerView: 1,
    spaceBetween: 0,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        768: {
            slidesPerView: 2,
            spaceBetween: 40,
        },
    }

  });
