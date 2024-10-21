package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
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

public class AddToPlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	private BranoRepository branoRepository = new BranoRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Long plId = Long.parseLong(request.getParameter("playlistId"));
		Long brId = Long.parseLong(request.getParameter("branoId"));
		
		Playlist playlist = playlistRepository.findById(plId);
		Brano brano = branoRepository.findById(brId);
		
		if(playlist!= null) {
			if (!playlist.getBrani().contains(brano)) {
				playlist.getBrani().add(brano);
				playlistRepository.update(playlist);
				
				String sorgente = request.getHeader("Referer");
				response.sendRedirect(sorgente);
				return;
			}
		}
		// aggiunger messaggio di errore
		/*
		 * String erroreBranoDoppio = "Errore brano già presente";
		 * request.setAttribute("erroreBranoDoppio", erroreBranoDoppio);
		 */
		
		String sorgente = request.getHeader("Referer");
		response.sendRedirect(sorgente);
		
	}

}