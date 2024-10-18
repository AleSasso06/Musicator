package it.generationitaly.musicator.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;

public class SavePlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// preso da automobile
		HttpSession session = request.getSession();
		if (session.getAttribute("utente") == null) {
			response.sendRedirect("login.jsp");
			return;
			
		}
		Utente utente = (Utente) session.getAttribute("utente");
		Playlist playlist = new Playlist();
		// magari si mette un if con una checkbox?
		playlist.setPubblica(true);
		playlist.setTitolo(request.getParameter("titolo"));
		playlist.setFoto(request.getParameter("foto"));
		playlist.setUtente(utente);

		playlistRepository.save(playlist);

		response.sendRedirect("automobili.jsp");

	}
}