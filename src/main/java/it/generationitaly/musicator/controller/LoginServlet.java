package it.generationitaly.musicator.controller;

import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// da inserire la sessione
	
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Utente utente = utenteRepository.findByEmail(email);
		if (utente != null && utente.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			// autenticazione con successo
			session.setAttribute("utente", utente);
			// request.getRequestDispatcher("index.jsp").forward(request, response);
			response.sendRedirect("welcome");
		} else {
			// request.setAttribute("erroreCredenziali", "Credenziali errate");
			response.sendRedirect("login.jsp?erroreCredenziali");
		}
	}

}
