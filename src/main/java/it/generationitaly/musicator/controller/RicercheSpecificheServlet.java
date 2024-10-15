package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
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
		// inoltre quelle in arrivo sono delle stringhe, possibilmente parziali (ricerca LIKE)
		String braniInput = request.getParameter("brani");
		String artistiInput = request.getParameter("artisti");
		String albumInput = request.getParameter("album");
		String playlistInput = request.getParameter("playlist");
		// si fanno delle ricerche nel genere? Dalla pagina dei generi con le card non ha senso cercare
		// neanche in quella di dettaglio o forse si? tipo cercare delle playlist 
		// o dei decenni (mi viene da pensare al rock e pop)
		// Qui voglio che se cerco 'rock' mi venga fuori il genere
		// su cui schiacciare per vedere tutti i brani (e album?) rock
		String generiInput = request.getParameter("generi");
		
		// avrebbe senso farlo con lo switch ma non so come
		if(braniInput != null) {
			List<Brano> brani = new ArrayList<Brano>();
			List<Brano> braniTitolo = branoRepository.findByTitolo(braniInput);
			List<Brano> braniArtista = branoRepository.findByArtista(braniInput);
			List<Brano> braniAlbum = branoRepository.findByAlbum(braniInput);
			List<Brano> braniLingua = branoRepository.findByLingua(braniInput);
			// metto anche qui la ricercaByGenere ma ci andrà l'if
			List<Genere> genereBrani = genereRepository.findByNome(braniInput);
			
			if(braniTitolo != null && !braniTitolo.isEmpty()) {
				for(Brano brano : braniTitolo) {
					brani.add(brano);
				}
			}
			if(braniArtista != null && !braniArtista.isEmpty()) {
				for(Brano brano : braniArtista) {
					brani.add(brano);
				}
			}
			if(braniAlbum != null && !braniAlbum.isEmpty()) {
				for(Brano brano : braniAlbum) {
					brani.add(brano);
				}
			}
			if(braniLingua != null && !braniLingua.isEmpty()) {
				for(Brano brano : braniLingua) {
					brani.add(brano);
				}
			}
			
			// manca il genere come attribute?
			
			// poi che succede? ora ho le ricerche. Le devo restituire alla pagina giusta
			// forse poi dovrò switchare le request con le session
			request.setAttribute("brani", brani);
			request.setAttribute("genereBrani", genereBrani);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("brani.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(artistiInput != null) {
			// importante fare il findByNome
			List<Artista> artisti = new ArrayList<Artista>();
			List<Artista> artistiPseudonimo = artistaRepository.findByPseudonimo(artistiInput);
			List<Artista> artistiNazionalita = artistaRepository.findByNazionalita(artistiInput);
			
			if (artistiPseudonimo != null && !artistiPseudonimo.isEmpty()) {
				for (Artista artista : artistiPseudonimo) {
					artisti.add(artista);
					System.out.println(artista);
				}
			}
			if (artistiNazionalita != null && !artistiNazionalita.isEmpty()) {
				for (Artista artista : artistiNazionalita) {
					artisti.add(artista);
					System.out.println(artista);
				}
			}
				
			request.setAttribute("artisti", artisti);
			//request.setAttribute("artisti", artistiPseudonimo);
			//request.setAttribute("artistiNazionalita", artistiNazionalita);
				
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("artisti.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(albumInput != null) {
			List<Album> albums = new ArrayList<Album>();
			List<Album> albumTitolo = albumRepository.findByTitolo(albumInput);
			List<Album> albumArtista = albumRepository.findByArtista(albumInput);
			List<Album> albumBrano = albumRepository.findByBrano(albumInput);
			List<Genere> genereAlbum = genereRepository.findByNome(albumInput);
			
			if(albumTitolo != null && !albumTitolo.isEmpty()) {
				for(Album album : albumTitolo) {
					albums.add(album);
				}
			}
			if(albumArtista != null && !albumArtista.isEmpty()) {
				for(Album album : albumArtista) {
					albums.add(album);
				}
			}
			if(albumBrano != null && !albumBrano.isEmpty()) {
				for(Album album : albumBrano) {
					albums.add(album);
				}
			}
			
			request.setAttribute("albums", albums);
			request.setAttribute("genereAlbum", genereAlbum);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("albums.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(playlistInput != null) {
			List<Playlist> playlists = null;
			
			List<Playlist> playlistTitolo = playlistRepository.findByTitolo(playlistInput);
			// ne servono altre? forse anche findPlaylistByBrano non sarebbe male
			// spotify ha anche qualcosa di simile a findPlaylistByArtista con le sue radio o this is *Nome Artista*
			
			if(playlistTitolo != null && !playlistTitolo.isEmpty()) {
				for(Playlist playlist : playlistTitolo) {
					playlists.add(playlist);
				}
			}
			// playlists.addAll(playlistTitolo);
			
			request.setAttribute("playlists", playlists);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("playlist.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(generiInput != null) {
			
		}
		
	}

}