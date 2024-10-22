package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
		
		// bisogna trovare un modo per non rimandare alle pagine dei doppioni
		
		// input provenienti ripettivamente da
		// brani.jsp
		String braniInput = request.getParameter("brani");
		// artisti.jsp
		String artistiInput = request.getParameter("artisti");
		// album.jsp
		String albumInput = request.getParameter("album");
		// playlist.jsp
		String playlistInput = request.getParameter("playlist");
		// dettaglio-genere.jsp
		String generiInput = request.getParameter("generi");
		
		if(braniInput != null) {
			List<Brano> brani = new ArrayList<Brano>();
			List<Brano> braniTitolo = branoRepository.findByTitolo(braniInput);
			List<Brano> braniArtistaPseudonimo = branoRepository.findByArtistaPseudonimo(braniInput);
			List<Brano> braniArtistaNome = branoRepository.findByArtistaNome(braniInput);
			List<Brano> braniAlbum = branoRepository.findByAlbum(braniInput);
			List<Brano> braniLingua = branoRepository.findByLingua(braniInput);
			List<Genere> genereBrani = genereRepository.findByNome(braniInput);
			
			if(braniTitolo != null && !braniTitolo.isEmpty()) {
				for(Brano brano : braniTitolo) {
					if(brani.contains(brano) == false) {
						brani.add(brano);
					}
				}
			}
			if(braniArtistaPseudonimo != null && !braniArtistaPseudonimo.isEmpty()) {
				for(Brano brano : braniArtistaPseudonimo) {
					if (brani.contains(brano) == false) {
						brani.add(brano);
					}
				}
			}
			if(braniArtistaNome != null && !braniArtistaNome.isEmpty()) {
				for(Brano brano : braniArtistaNome) {
					if (brani.contains(brano) == false) {
						brani.add(brano);
					}				
				}
			}
			if(braniAlbum != null && !braniAlbum.isEmpty()) {
				for(Brano brano : braniAlbum) {
					if (brani.contains(brano) == false) {
						brani.add(brano);
					}
				}
			}
			if(braniLingua != null && !braniLingua.isEmpty()) {
				for(Brano brano : braniLingua) {
					if (brani.contains(brano) == false) {
						brani.add(brano);
					}
				}
			}
			
			for (Brano brano : brani) {
				List<Album> albums = albumRepository.findByBranoId(brano.getId());
				if (!albums.isEmpty())
					brano.setAlbum(albums);
			}
			
			// mando le ricerche alla pagina brani.jsp
			request.setAttribute("brani", brani);
			request.setAttribute("genereBrani", genereBrani);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("brani.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(artistiInput != null) {
			
			List<Artista> artisti = new ArrayList<Artista>();
			List<Artista> artistiPseudonimo = artistaRepository.findByPseudonimo(artistiInput);
			List<Artista> artistiNazionalita = artistaRepository.findByNazionalita(artistiInput);
			List<Artista> artistiNome = artistaRepository.findByNome(artistiInput);
			
			if (artistiPseudonimo != null && !artistiPseudonimo.isEmpty()) {
				for (Artista artista : artistiPseudonimo) {
					if (artisti.contains(artista) == false) {
						artisti.add(artista);
					}
				}
			}
			if (artistiNazionalita != null && !artistiNazionalita.isEmpty()) {
				for (Artista artista : artistiNazionalita) {
					if (artisti.contains(artista) == false) {
						artisti.add(artista);
					}
				}
			}
			if (artistiNome != null && !artistiNome.isEmpty()) {
				for (Artista artista : artistiNome) {
					if (artisti.contains(artista) == false) {
						artisti.add(artista);
					}
				}
			}
				
			request.setAttribute("artisti", artisti);
			
			// mando le ricerche alla pagina artisti.jsp
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
					if (albums.contains(album) == false) {
						albums.add(album);
					}
				}
			}
			if(albumArtista != null && !albumArtista.isEmpty()) {
				for(Album album : albumArtista) {
					if (albums.contains(album) == false) {
						albums.add(album);
					}
				}
			}
			if(albumBrano != null && !albumBrano.isEmpty()) {
				for(Album album : albumBrano) {
					if (albums.contains(album) == false) {
						albums.add(album);
					}
				}
			}
			
			request.setAttribute("albums", albums);
			request.setAttribute("genereAlbum", genereAlbum);
			
			// mando le ricerche alla pagina album.jsp
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("album.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(playlistInput != null) {
			List<Playlist> playlists = new ArrayList<Playlist>();
			
			List<Playlist> playlistTitolo = playlistRepository.findByTitolo(playlistInput);
			List<Playlist> playlistBrano = playlistRepository.findByBrano(playlistInput);
			// ne servono altre? forse anche findPlaylistByBrano non sarebbe male
			// spotify ha anche qualcosa di simile a findPlaylistByArtista con le sue radio o this is *Nome Artista*
			
			if(playlistTitolo != null && !playlistTitolo.isEmpty()) {
				for(Playlist playlist : playlistTitolo) {
					if (playlists.contains(playlist) == false) {
						playlists.add(playlist);
					}
				}
			}
			if(playlistBrano != null && !playlistBrano.isEmpty()) {
				for(Playlist playlist : playlistBrano) {
					if (playlists.contains(playlist) == false) {
						playlists.add(playlist);
					}
				}
			}
			
			request.setAttribute("playlists", playlists);
			
			// mando le ricerche alla pagina playlist.jsp
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("playlist.jsp");
			requestDispatcher.forward(request, response);
		}
		
		if(generiInput != null) {
			// questo proverrebbe da dettaglio-genere.jsp
			// per fare ricerche tra brani e album di quel genere
			// per titolo / artista / etc
		}
		
	}

}