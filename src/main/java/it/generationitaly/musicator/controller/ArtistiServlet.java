package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.repository.ArtistaRepository;
import it.generationitaly.musicator.repository.impl.ArtistaRepositoryImpl;

public class ArtistiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArtistaRepository artistaRepository = new ArtistaRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List<Artista> artisti = artistaRepository.findAll();
	
	for(Artista artista : artisti) {
		System.out.println(artista);
	}
	request.setAttribute("artisti", artisti);
	RequestDispatcher requestDispatcher = request.getRequestDispatcher("artisti.jsp");
	requestDispatcher.forward(request, response);
	
	}

}
