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
import it.generationitaly.musicator.entity.Genere;
import it.generationitaly.musicator.repository.AlbumRepository;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.GenereRepository;
import it.generationitaly.musicator.repository.impl.AlbumRepositoryImpl;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;
import it.generationitaly.musicator.repository.impl.GenereRepositoryImpl;


public class GenereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private GenereRepository genereRepository = new GenereRepositoryImpl();
	private BranoRepository branoRepository = new BranoRepositoryImpl();
	 private AlbumRepository albumRepository = new AlbumRepositoryImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		long id = Long.parseLong(request.getParameter("id"));
		//String nome = request.getParameter("nome");
		Genere genere = genereRepository.findById(id);
		System.out.println(genere);
		
		List<Brano> brani = branoRepository.findByGenereId(id);
		for (Brano brano : brani) {
			List<Album> albums = albumRepository.findByBranoId(brano.getId());
			if (!albums.isEmpty())
				brano.setAlbum(albums);
		}
		List<Album> album = albumRepository.findByGenereId(id);
		
		genere.setAlbum(album);
		genere.setBrani(brani);
		
		request.setAttribute("genere", genere);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dettaglio-genere.jsp");
		requestDispatcher.forward(request, response);
		
	
	}

}
