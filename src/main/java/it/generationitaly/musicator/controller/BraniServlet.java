package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import it.generationitaly.musicator.entity.Brano;
import it.generationitaly.musicator.repository.BranoRepository;
import it.generationitaly.musicator.repository.impl.BranoRepositoryImpl;

public class BraniServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BranoRepository branoRepository = new BranoRepositoryImpl();
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Brano> brani = branoRepository.findAll();
		
		//inserire indirizzo della pagina visualizzazione lista brani
		request.setAttribute("brani", brani);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("");
		requestDispatcher.forward(request, response);
		
	}

	

}
