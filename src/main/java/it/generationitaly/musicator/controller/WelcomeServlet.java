package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;


public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BranoRepository branoRepository = new BranoRepositoryImpl();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		List<Album> albums = null;

		
		List<Brano> brani = branoRepository.findDistinct();
		for (Brano brano : brani) {
			albums = branoRepository.findAlbumsByBrano(brano.getId());
			if (!albums.isEmpty())
				brano.setAlbum(albums);
		}

		
		request.setAttribute("brani", brani);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
