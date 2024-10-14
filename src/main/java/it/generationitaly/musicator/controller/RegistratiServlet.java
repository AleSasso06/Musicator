package it.generationitaly.musicator.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import it.generationitaly.musicator.entity.Utente;
import it.generationitaly.musicator.repository.UtenteRepository;
import it.generationitaly.musicator.repository.impl.UtenteRepositoryImpl;

public class RegistratiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Utente utente = new Utente();
		
		String codiceFiscale = request.getParameter("codiceFiscale");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String dataNascitaAsString = request.getParameter("dataNascita");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Date dataNascita = null;
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			dataNascita = sdf.parse(dataNascitaAsString);
		} catch (ParseException e) {
			System.err.println("Errore, formato non corretto");
			response.sendRedirect("registrati.jsp?erroreDataNonCorretta");
			return;
		}
		
		if (utente.getCodiceFiscale().equals(codiceFiscale)) {
			response.sendRedirect("registrati.jsp?erroreCodiceFiscaleUguale");
			return;
		}
		
		System.out.println("Codice Fiscale: " + codiceFiscale);
		System.out.println("Nome: " + nome);
		System.out.println("Cognome: " + cognome);
		System.out.println("Data di nascita: " + dataNascita);
		System.out.println("Username: " + username);
		System.out.println("Password: " + password);
		
		
		utente = utenteRepository.findByUsername(username);
		if (utente == null) {
			utente = new Utente();
			utente.setCodiceFiscale(codiceFiscale);
			utente.setNome(nome);
			utente.setCognome(cognome);
			utente.setDataNascita(dataNascita);
			utente.setUsername(username);
			utente.setPassword(password);

			utenteRepository.save(utente);
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("registrati.jsp?erroreUsernameEsistente");
		}
	}

}
