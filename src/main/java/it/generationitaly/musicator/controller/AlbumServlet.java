package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import it.generationitaly.musicator.entity.Album;
import it.generationitaly.musicator.repository.AlbumRepository;
import it.generationitaly.musicator.repository.impl.AlbumRepositoryImpl;

public class AlbumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AlbumRepository albumRepository= new AlbumRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		long id = Long.parseLong(request.getParameter("id"));
		
		Album album = albumRepository.findById(id);
		
		request.setAttribute("album", album);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dettaglio-album.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
