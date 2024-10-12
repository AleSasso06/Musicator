package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import it.generationitaly.musicator.entity.*;
import it.generationitaly.musicator.repository.AlbumRepository;
import it.generationitaly.musicator.repository.ArtistaRepository;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.GenereRepository;
import it.generationitaly.musicator.repository.PlaylistRepository;
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.AlbumRepositoryImpl;
import it.generationitaly.musicator.repository.impl.ArtistaRepositoryImpl;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;
import it.generationitaly.musicator.repository.impl.GenereRepositoryImpl;
import it.generationitaly.musicator.repository.impl.PlaylistRepositoryImpl;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;

public class RicercheSpecificheServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BranoRepository branoRepository = new BranoRepositoryImpl();
	private ArtistaRepository artistaRepository = new ArtistaRepositoryImpl();
	private AlbumRepository albumRepository = new AlbumRepositoryImpl();
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	private GenereRepository genereRepository = new GenereRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// dunque in input voglio avere le ricerche che fanno gli utenti
		// nelle singole pagine
		// voglio capire da che pagina viene l'input
		// quindi il frontend dovrebbe mettere dei name riconoscibili
		// preferibilmente quelli già scritti qui sotto
		// inoltre quelle in arrivo sono delle stringhe, possibilmente parziali
		String braniInput = request.getParameter("brani");
		String artistiInput = request.getParameter("artisti");
		String albumInput = request.getParameter("album");
		String playlistInput = request.getParameter("playlist");
		
		// avrebbe senso farlo con lo switch ma non so come
		if(braniInput != null) {
			List<Brano> braniTitolo = branoRepository.findByTitolo(braniInput);
			List<Brano> braniArtista = branoRepository.findByArtista(braniInput);
			List<Brano> braniAlbum = branoRepository.findByAlbum(braniInput);
			List<Brano> braniLingua = branoRepository.findByLingua(braniInput);
			// metto anche qui la ricercaByGenere ma ci andrà l'if
			List<Genere> genereBrani = genereRepository.findByNome(braniInput);
			
			// poi che succede? ora ho le ricerche. Le devo restituire alla pagina giusta
			// forse poi dovrò switchare le request con le session
			request.setAttribute("braniTitolo", braniTitolo);
			request.setAttribute("braniArtista", braniArtista);
			request.setAttribute("braniAlbum", braniAlbum);
			request.setAttribute("braniLingua", braniLingua);
			request.setAttribute("genereBrani", genereBrani);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("#");
			requestDispatcher.forward(request, response);
		}
		
		if(artistiInput != null) {
			// importante fare il findByNome
			List<Artista> artistiPseudonimo = artistaRepository.findByPseudonimo(artistiInput);
			List<Artista> artistiNazionalita = artistaRepository.findByNazionalita(artistiInput);
			
			request.setAttribute("artistiPseudonimo", artistiPseudonimo);
			request.setAttribute("artistiNazionalita", artistiNazionalita);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("#");
			requestDispatcher.forward(request, response);
		}
		
		if(albumInput != null) {
			List<Album> albumTitolo = albumRepository.findByTitolo(albumInput);
			List<Album> albumArtista = albumRepository.findByArtista(albumInput);
			List<Album> albumBrano = albumRepository.findByBrano(albumInput);
			List<Genere> genereAlbum = genereRepository.findByNome(albumInput);
			
			request.setAttribute("albumTitolo", albumTitolo);
			request.setAttribute("albumArtista", albumArtista);
			request.setAttribute("albumBrano", albumBrano);
			request.setAttribute("genereAlbum", genereAlbum);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("#");
			requestDispatcher.forward(request, response);
		}
		
		if(playlistInput != null) {
			List<Playlist> playlistTitolo = playlistRepository.findbyTitolo(playlistInput);
			// ne servono altre? forse anche findPlaylistByBrano non sarebbe male
			// spotify ha anche qualcosa di simile a findPlaylistByArtista con le sue radio o this is *Nome Artista*
			
			request.setAttribute("playlistTitolo", playlistTitolo);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("#");
			requestDispatcher.forward(request, response);
		}
		
	}

}
