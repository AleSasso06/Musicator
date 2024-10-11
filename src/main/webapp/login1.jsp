<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
	 <!-- css locali -->
    	 <link rel="stylesheet" href="style.css">   
<style>
        /* Stile per centrare verticalmente e orizzontalmente */
        body {
            display: flex;              /* Abilita Flexbox */
            justify-content: center;    /* Centra orizzontalmente */
            align-items: center;        /* Centra verticalmente */
            height: 100vh;             /* Imposta l'altezza del body alla vista */
            margin: 0;                 /* Rimuove il margine di default */
            background-color: #f0f0f0; /* Colore di sfondo chiaro */
        }
        .container {
            max-width: 500px;           /* Imposta una larghezza massima per il contenitore */
            padding: 20px;              /* Padding interno */
            margin: 0;                  /* Margine zero per il contenitore */
            background-color: white;    /* Colore di sfondo del contenitore */
            border-radius: 10px;        /* Angoli arrotondati per il contenitore */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Ombra leggera per il contenitore */
        }
        .mb3 {
            margin-bottom: 1rem; /* Margine inferiore per il titolo */
            text-align: center;   /* Centra il testo del titolo */
        }
        .custom-btn {
            background-color: #C2185B;  /* Colore di sfondo rosa scuro */
            color: white;                /* Colore del testo bianco */
            border: 2px solid #C2185B;   /* Bordo rosa scuro */
            padding: 6px 15px;           /* Padding verticale e orizzontale */
            border-radius: 10px;         /* Angoli arrotondati */
            font-weight: bold;            /* Testo in grassetto */
            cursor: pointer;              /* Cambia il cursore al passaggio del mouse */
        }
    </style>
</head>
<body>

    <div class="container">
        <h1 class="mb3">Login</h1> 
        <form class="px-4 py-3">
            <div class="mb-3">
                <label for="exampleDropdownFormEmail1" class="form-label">Email</label>
                <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
            </div>
            <div class="mb-3">
                <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
            </div>
            <div class="mb-3">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck">
                    <label class="form-check-label" for="dropdownCheck">Remember me</label>
                </div>
            </div>
            <button type="button" class="custom-btn">Sign in</button>
        </form>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">New around here? Sign up</a>
        <a class="dropdown-item" href="#">Forgot password?</a>
    </div>
		<%@ include file="nav.jsp" %>
    <script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
