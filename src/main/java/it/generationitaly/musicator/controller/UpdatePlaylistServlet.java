package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Playlist;
import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.AlbumRepository;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.AlbumRepositoryImpl;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;

public class UpdatePlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	private AlbumRepository albumRepository = new AlbumRepositoryImpl();
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

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
		List<Brano> brani = playlist.getBrani();
		for (Brano brano : brani) {
			List<Album> albums = albumRepository.findByBranoId(brano.getId());
			if (!albums.isEmpty())
				brano.setAlbum(albums);
		}

		request.setAttribute("playlist", playlist); // link modifica-playlist.jsp
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("updateplaylist.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		//(il parameter si rifà sempre a un campo name="")
		long id = Long.parseLong(request.getParameter("id"));
		String titolo = request.getParameter("titolo");
		String foto = request.getParameter("foto");
		
		System.out.println("titolo: " + titolo);

		Playlist playlist = playlistRepository.findById(id);
		playlist.setTitolo(titolo);
		playlist.setFoto(foto);

		playlistRepository.update(playlist);
		
		Utente utente = (Utente) session.getAttribute("utente");
		List<Playlist> playlists = utente.getPlaylist();
		
		if (playlists.contains(playlist)) {
			playlists.remove(playlist);
			playlists.add(playlist);
		}

		response.sendRedirect("utente-profilo.jsp");



	}

}