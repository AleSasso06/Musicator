package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;

public class PlaylistsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Playlist> playlists = playlistRepository.findByPrivata();
		request.setAttribute("playlists", playlists);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("playlist.jsp");
		requestDispatcher.forward(request, response);
	}
}