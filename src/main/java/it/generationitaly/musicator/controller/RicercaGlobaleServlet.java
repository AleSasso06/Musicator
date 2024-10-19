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
import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.entity.Genere;
import it.generationitaly.musicator.entity.Playlist;
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

public class RicercaGlobaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BranoRepository branoRepository = new BranoRepositoryImpl();
	private ArtistaRepository artistaRepository = new ArtistaRepositoryImpl();
	private AlbumRepository albumRepository = new AlbumRepositoryImpl();
	private PlaylistRepository playlistRepository = new PlaylistRepositoryImpl();
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();
	private GenereRepository genereRepository = new GenereRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// l'utente lo può cercare solo chi è loggato?
		// in quel caso penso ci sia bisogno di rispolverare sessioni e cookie
		// e aggiungere un if
		String inputUtente = request.getParameter("ricercaUtente");
		List<Album> albums = null;
		// ricerca byGenere?
		// forse è meglio cercare sempre by titolo, e in caso ci sia il match di genere viene fuori
		// direttamente il genere (come se fosse a metà tra una playlist e un artista me l'immagino)
		// dove cliccando porta ad una pagina con i brani e gli album di quel genere - quindi i findByGenere)
		
		List<Brano> brani = branoRepository.findByTitolo(inputUtente);
		for (Brano brano : brani) {
			albums = albumRepository.findByBranoId(brano.getId());
			if (!albums.isEmpty())
				brano.setAlbum(albums);
		}
		List<Artista> artisti = artistaRepository.findByPseudonimo(inputUtente);
		List<Album> album = albumRepository.findByTitolo(inputUtente);
		List<Playlist> playlist = playlistRepository.findByTitolo(inputUtente);
		List<Genere> generi = genereRepository.findByNome(inputUtente);
		
		request.setAttribute("brani", brani);
		request.setAttribute("artisti", artisti);
		request.setAttribute("album", album);
		request.setAttribute("playlist", playlist);
		// qui nel jsp andrà un "if generi != null mostra, else nascondi"
		request.setAttribute("generi", generi); 
		request.setAttribute("inputUtente", inputUtente);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("ricerca-globale.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
