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
import it.generationitaly.musicator.repository.AlbumRepository;
import it.generationitaly.musicator.repository.impl.AlbumRepositoryImpl;

public class AlbumsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AlbumRepository albumRepository = new AlbumRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/*
		 * in seguito aggiungere casistiche di ricerca diverse prendendno il parametro
		 * (request.getParameter("genere")
		 */
		//List<Album> albums = albumRepository.findAll();
		
		/*for(Album album : albums) {
			System.out.println(album);
		}*/
		
		List<Album> albums = albumRepository.findAll();
		  /*if (!albums.isEmpty()) {
		  for (Album album : albums) {
		   System.out.println(albums);
		  }
		  } else {
		   System.out.println("Nessun brano trovato");
		  }*/

		// inserire indirizzo della pagina visualizzazione lista brani
		request.setAttribute("albums", albums);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("album.jsp");
		requestDispatcher.forward(request, response);
	}

}
