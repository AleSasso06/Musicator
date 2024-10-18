package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;

public class UpdatePlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		  (mi rifaccio al metodo di modifica delle auto): benché abbiamo a disposizione
		  l'id della playlist, lo prendiamo attraverso un bottone presente nella pagina
		  dell'utente(quindi get) e con questo dato lo reindiriziamo alla pagina di
		  modifica della playlist
		 | profilo-utente.jsp-> bottone modifica->trasporto id verso pag modifica(da creare)-> 
		  inserimento dati-> ritorna al profilo|
		 */

		long id = Long.parseLong(request.getParameter("id"));
		Playlist playlist = playlistRepository.findById(id);

		request.setAttribute("playlist", playlist); // link modifica-playlist.jsp
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//(il parameter si rifà sempre a un campo name="")
		long id = Long.parseLong(request.getParameter("id"));
		String titolo = request.getParameter("titolo");
		String foto = request.getParameter("foto");

		Playlist playlist = playlistRepository.findById(id);
		playlist.setTitolo(titolo);
		playlist.setFoto(foto);

		playlistRepository.update(playlist);

		response.sendRedirect("utente-profilo.jsp");

	}

}