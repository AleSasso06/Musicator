<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="it.generationitaly.musicator.entity.Playlist" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Modifica Playlist</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Modifica Playlist</h1>
    
    <% Playlist playlist = (Playlist) request.getAttribute("playlist"); %>

    <form action="modificaPlaylist" method="POST">
        <!-- Campo nascosto per l'ID della playlist -->
        <input type="hidden" name="id" value="<%= playlist.getId() %>">

        <!-- Campo per il titolo della playlist -->
        <div class="mb-3">
            <label for="titolo" class="form-label">Titolo</label>
            <input type="text" class="form-control" id="titolo" name="titolo" value="<%= playlist.getTitolo() %>" required>
        </div>

        <!-- Campo per l'immagine della playlist -->
        <div class="mb-3">
            <label for="foto" class="form-label">URL Immagine</label>
            <input type="text" class="form-control" id="foto" name="foto" value="<%= playlist.getFoto() %>" required>
        </div>

        <!-- Pulsante per salvare le modifiche -->
        <button type="submit" class="btn btn-primary">Salva Modifiche</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
