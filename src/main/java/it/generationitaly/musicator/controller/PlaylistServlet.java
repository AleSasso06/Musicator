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

public class PlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// in seguito findByBrano e findByTitolo sempre sulla base del getParameter("");
		long id = Long.parseLong(request.getParameter("id"));
		
		Playlist playlist = playlistRepository.findById(id);
		
		request.setAttribute("playlist", playlist);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dettaglio-playlist.jsp");
		requestDispatcher.forward(request, response);
	
	}

}
