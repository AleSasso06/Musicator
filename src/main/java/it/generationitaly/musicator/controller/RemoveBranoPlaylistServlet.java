package it.generationitaly.musicator.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;

/**
 * Servlet implementation class RemoveBranoServlet
 */
public class RemoveBranoPlaylistServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int branoOrdinal = Integer.parseInt(request.getParameter("branoPlace"));
		long playlistId = Long.parseLong(request.getParameter("playlistId"));

		Playlist playlist = playlistRepository.findById(playlistId);
		
		if (playlist != null) {
			playlist.getBrani().remove(branoOrdinal);
			playlistRepository.update(playlist);
		}

		response.sendRedirect("update-playlist?id=" + playlistId);
	}
}