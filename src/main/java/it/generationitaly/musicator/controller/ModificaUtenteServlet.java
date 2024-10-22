package it.generationitaly.musicator.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;

public class ModificaUtenteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Utente utente = (Utente)session.getAttribute("utente");
		
		String foto = request.getParameter("foto");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		
		utente.setFoto(foto);
		utente.setEmail(email);
		utente.setPassword(password);
		utente.setUsername(username);
		
		utenteRepository.update(utente);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("utente-profilo.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
