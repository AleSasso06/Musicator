package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;

public class SavePlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	private BranoRepository branoRepository = new BranoRepositoryImpl();
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// preso da automobile, ha senso?
		HttpSession session = request.getSession();
		
		if (session.getAttribute("utente") == null) {
			//
			response.sendRedirect("welcome");
			return;
			
		}
		Utente utente = (Utente) session.getAttribute("utente");
		Playlist playlist = new Playlist();
		// magari si mette un if con una checkbox?
		playlist.setPrivata(true);
		playlist.setTitolo(request.getParameter("titolo"));
		playlist.setFoto(request.getParameter("foto"));
		playlist.setUtente(utente);
		utente.getPlaylist().add(playlist);
		if (request.getParameter("branoId") != null) {
			Long id = Long.parseLong(request.getParameter("branoId"));
			Brano brano = branoRepository.findById(id);
			playlist.getBrani().add(brano);
		}
		playlistRepository.save(playlist);
		
		utenteRepository.update(utente);
		
		// session.setAttribute("utente", utente);
		
		// response.sendRedirect("utente-profilo.jsp");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("utente-profilo.jsp");
		requestDispatcher.forward(request, response);

	}
}