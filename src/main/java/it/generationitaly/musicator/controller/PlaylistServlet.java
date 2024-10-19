package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.repository.AlbumRepository;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.impl.AlbumRepositoryImpl;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;

public class PlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	private AlbumRepository albumRepository = new AlbumRepositoryImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Album> albums = null;
		// in seguito findByBrano e findByTitolo sempre sulla base del getParameter("");
		long id = Long.parseLong(request.getParameter("id"));
		
		Playlist playlist = playlistRepository.findById(id);
		List<Brano> brani = playlist.getBrani();
		for (Brano brano : brani) {
				albums = albumRepository.findByBranoId(brano.getId());
				if (!albums.isEmpty())
					brano.setAlbum(albums);
			}
		
		request.setAttribute("playlist", playlist);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dettaglio-playlist.jsp");
		requestDispatcher.forward(request, response);
	
	}

}
