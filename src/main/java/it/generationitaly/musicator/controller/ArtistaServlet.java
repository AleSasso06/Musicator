package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import it.generationitaly.musicator.entity.Artista;
import it.generationitaly.musicator.repository.ArtistaRepository;
import it.generationitaly.musicator.repository.impl.ArtistaRepositoryImpl;

public class ArtistaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ArtistaRepository artistaRepository = new ArtistaRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		long id = Long.parseLong(request.getParameter("id"));
		
		Artista artista = artistaRepository.findById(id);
		
		request.setAttribute("artista", artista);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dettaglio-artista.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
