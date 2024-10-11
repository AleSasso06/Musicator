<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
	 <link rel="stylesheet" href="style.css">
</head>
<body >

<div style="background-color:orange" class="container min-vh-100 d-flex  justify-content-center  align-items-center">

<form>
<h1 class="mb-5" >Registrazione</h1>
<div  class=" container">
 
  <div  class="form-row">
  <div class="form-row col-md-20">
    <img  src="giradischi.jpg" class="rounded mx-auto d-block" alt= "...">
  
      <label  for="input-nome">Nome</label>
      <input type="text" class="form-control" id="input-nome" >
    </div>
    <div class="form-group col-md-20">
      <label for="input-cognome">Cognome</label>
      <input type="text" class="form-control" id="input-cognome" >
    </div>
    <div class="form-group col-md-20">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4">
    </div>
    <div class="form-group col-md-20">
      <label for="input-username">Username</label>
      <input type="email" class="form-control" id="input-username" >
    </div>
    <div class="form-group col-md-20 ">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="inputPassword4" >
    </div>
    <br>
    <button class="btn" type="submit" >Accedi</button>
    
  </div>
  </div>
  </form>
  <!-- <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
   <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>-->
 
</div>




	<script type="text/javascript" src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>