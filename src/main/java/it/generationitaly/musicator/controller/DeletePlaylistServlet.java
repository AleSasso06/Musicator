package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
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
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;

public class DeletePlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Utente utente = (Utente) session.getAttribute("utente");
		Long id = Long.parseLong(request.getParameter("playlistId"));
		Playlist playlist = playlistRepository.findById(id);
		if (playlist != null) {
			utente.getPlaylist().remove(playlist);
			playlistRepository.delete(playlist);
			utenteRepository.update(utente);
			session.setAttribute("utente", utente);
			for(Playlist playlista: utente.getPlaylist()) {
				System.out.println("playlist " + playlista.getTitolo());
			}
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("utente-profilo.jsp");
			requestDispatcher.forward(request, response);
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("utente-profilo.jsp");
		requestDispatcher.forward(request, response);
	}

}