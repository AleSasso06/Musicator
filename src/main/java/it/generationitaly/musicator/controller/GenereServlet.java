package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import it.generationitaly.musicator.entity.Genere;
import it.generationitaly.musicator.repository.GenereRepository;
import it.generationitaly.musicator.repository.impl.GenereRepositoryImpl;

public class GenereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private GenereRepository genereRepository = new GenereRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		long id = Long.parseLong(request.getParameter("id"));
		
		Genere genere = genereRepository.findById(id);
		
		request.setAttribute("genere", genere);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("#");
		requestDispatcher.forward(request, response);
	
	}

}
